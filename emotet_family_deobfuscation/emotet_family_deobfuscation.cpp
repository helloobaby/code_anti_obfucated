/*
* emotet家族恶意软件代码去混淆
* 
* x86编译分析x86样本
* x64编译分析x64样本
* 
* 适用情况(所有jcc分支的地址都要在ret指令前面,因为我读取整个函数的指令以ret结尾):
* push ebp
* mov esp,ebp
* 
* 
* a:jcc b
* 
* 
* b:jcc c
* 
* 
* c:jcc a
* 
* 
* 
* ret
*/


#include <iostream>
#include <string>
#include <fstream>
#include <vector>
#include <cassert>


#include <windows.h>
#include <shlwapi.h>

#include <retdec/utils/conversion.h>
#include <retdec/capstone2llvmir/capstone2llvmir.h>

#include "llvm_utils.h"


#include "zydis_help.h"
#include "other_util.h"
#include "pe.h"

#pragma comment(lib,"shlwapi.lib")
#pragma comment(lib,"retdec-bin2llvmir.lib")
#pragma comment(lib,"retdec-capstone2llvmir.lib")
#pragma comment(lib,"retdec-capstone.lib")
#pragma comment(lib,"retdec-ar-extractor.lib")
#pragma comment(lib,"retdec-common.lib")
#pragma comment(lib,"retdec-config.lib")
#pragma comment(lib,"retdec-cpdetect.lib")
#pragma comment(lib,"retdec-crypto.lib")
#pragma comment(lib,"retdec-ctypes.lib")
#pragma comment(lib,"retdec-pog_re2.lib")
#pragma comment(lib,"retdec-pog_fmt.lib")
#pragma comment(lib,"retdec-pelib.lib")
#pragma comment(lib,"retdec-loader.lib")
#pragma comment(lib,"retdec-ctypesparser.lib")
#pragma comment(lib,"retdec-LLVMPasses.lib")
#pragma comment(lib,"retdec-llvmir2hll.lib")


#pragma comment(lib,"LLVMAggressiveInstCombine.lib")
#pragma comment(lib,"retdec-LLVMAnalysis.lib")
#pragma comment(lib,"LLVMAsmParser.lib")
#pragma comment(lib,"LLVMAsmPrinter.lib")
#pragma comment(lib,"retdec-LLVMBinaryFormat.lib")
#pragma comment(lib,"retdec-LLVMBitReader.lib")
#pragma comment(lib,"LLVMBitstreamReader.lib")
#pragma comment(lib,"retdec-LLVMBitWriter.lib")

//#pragma comment(lib,"LLVMCFGuard.lib")
#pragma comment(lib,"retdec-LLVMCodeGen.lib")
#pragma comment(lib,"retdec-LLVMCore.lib")

//#pragma comment(lib,"LLVMDebugInfoCodeView.lib")
#pragma comment(lib,"retdec-LLVMDebugInfoDWARF.lib")
#//pragma comment(lib,"LLVMDebugInfoMSF.lib")
//#pragma comment(lib,"LLVMDebugInfoPDB.lib")
#pragma comment(lib,"retdec-LLVMDemangle.lib")

//#pragma comment(lib,"LLVMGlobalISel.lib")

#pragma comment(lib,"retdec-LLVMipo.lib")
#pragma comment(lib,"retdec-LLVMInstCombine.lib")
//#pragma comment(lib,"LLVMInstrumentation.lib")

//#pragma comment(lib,"LLVMLinker.lib")

#pragma comment(lib,"retdec-LLVMIRReader.lib")
#pragma comment(lib,"retdec-LLVMMC.lib")
//#pragma comment(lib,"LLVMMCDisassembler.lib")
#pragma comment(lib,"retdec-LLVMMCParser.lib")
#pragma comment(lib,"retdec-LLVMObject.lib")

//#pragma comment(lib,"LLVMProfileData.lib")

//#pragma comment(lib,"LLVMRemarks.lib")

#pragma comment(lib,"retdec-LLVMScalarOpts.lib")
//#pragma comment(lib,"LLVMSelectionDAG.lib")
#pragma comment(lib,"retdec-llvm-support.lib")
#pragma comment(lib,"retdec-LLVMSupport.lib")
//#pragma comment(lib,"LLVMSymbolize.lib")

//#pragma comment(lib,"LLVMTableGen.lib")
//#pragma comment(lib,"LLVMTableGenGlobalISel.lib")
#pragma comment(lib,"retdec-LLVMTarget.lib")
//#pragma comment(lib,"LLVMTextAPI.lib")
#pragma comment(lib,"retdec-LLVMTransformUtils.lib")

#pragma comment(lib,"retdec-LLVMAsmParser.lib")
//#pragma comment(lib,"LLVMX86CodeGen.lib")
//#pragma comment(lib,"LLVMX86Desc.lib")
//#pragma comment(lib,"LLVMX86Info.lib")


using namespace std;

// 要研究的二进制文件
wstring gfile = L"C:\\Users\\asdf\\Documents\\Tencent Files\\917893201\\FileRecv\\samples\\main_dump.dll";
// 分析函数的RVA
uint32_t grva = 0x36F7;

// 文件的二进制数据
std::vector<uint8_t> vecFileBuf;

int wmain(int argc,wchar_t* argv[])
{
    // 如果命令行提供了参数，选择这个路径
    if (argc == 3)  
    {
        gfile = argv[1];
        //grva = argv[2];
        assert(PathFileExistsW(gfile.c_str()));
    }
    wcout << "[-] target file : " << gfile.c_str() << endl;
    wcout << "[-] function start : " << hex << grva << endl;

    ZydisDecodedInstruction decode_insn{};

    ifstream fs(gfile,ios::binary);
    assert(fs.is_open());
    
    fs.unsetf(std::ios::skipws);                                //必须加这一行,不然读取数据有误
    // 为什么使用back_inserter而不是end()
    // https://stackoverflow.com/questions/54297642/why-use-stdback-inserter-instead-of-end-during-stdcopy
    std::copy(istream_iterator<uint8_t>(fs), istream_iterator<uint8_t>(), back_inserter(vecFileBuf));
    assert(vecFileBuf.size());

    wcout << "[-] file size : " << oct << vecFileBuf.size() << endl;

    // 初始化zydis
    zydis::init();
    
    //void* des = pe::RVAtoP(vecFileBuf.data(), grva);          //如果是dump的话就不用rva转foa了
    void* des = vecFileBuf.data() + grva;                       //默认要求提供修复完的dump文件
    void* function_end = des;
    size_t function_size = 0;                                   //函数大小  字节为单位
    
    while (ZYAN_SUCCESS(ZydisDecoderDecodeBuffer(g_decoder.get(), function_end, 1000, &decode_insn))) {


        if (zydis::is_ret(decode_insn)) {
            break;
        }



        function_end = (char*)function_end + decode_insn.length;             //移动指令指针到下一条指令
        function_size += decode_insn.length;
        //zydis::print(decode_insn);                                         //输出函数反汇编
    }

    wcout << "[-] function end : " << hex << (char*)function_end -(char*)vecFileBuf.data() << endl;
    
    //将x86转成llvm的ir
    llvm::LLVMContext ctx;
    llvm::Module module("emotet", ctx);
    auto* f = llvm::Function::Create(
        llvm::FunctionType::get(llvm::Type::getVoidTy(ctx), false),
        llvm::GlobalValue::ExternalLinkage,
        "root",
        &module);
    llvm::BasicBlock::Create(module.getContext(), "entry", f);
    llvm::IRBuilder<> irb(&f->front());
    try
    {
        auto c2l = retdec::capstone2llvmir::Capstone2LlvmIrTranslator::createArch(
            CS_ARCH_X86,
            &module,
            CS_MODE_32,
            CS_MODE_LITTLE_ENDIAN);

        c2l->translate((const uint8_t*)des, function_size, grva, irb);

        module.print(llvm::outs(), nullptr);
    }
    catch (...)
    {
        std::cerr << "Error: something went wrong!" << std::endl;
        return 1;
    }

    complie(&module, f);
    
    wcout << "[-] ..............." << endl;
    wcout << "[-] optimized ....." << endl;
    wcout << "[-] ..............." << endl;

    module.print(llvm::outs(), nullptr);






    return 0;
}





