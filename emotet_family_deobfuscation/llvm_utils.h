#include <iostream>
#include <memory>
#include <fstream>

#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Type.h>
#include <llvm/IR/Verifier.h>
#include <llvm/IR/Value.h>
#include <llvm/Transforms/Utils.h> 
#include <llvm/Transforms/InstCombine/InstCombine.h> 
#include <llvm/Transforms/Scalar.h> 
#include <llvm/Transforms/Scalar/GVN.h> 
#include <llvm/IR/LegacyPassManager.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/IR/InlineAsm.h>
#include <llvm/IR/Attributes.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/Transforms/Utils/Cloning.h>

//for x86 complie
#include <llvm/Support/Host.h>
#include <retdec/llvm/Support/TargetRegistry.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Target/TargetMachine.h>
#include <llvm/Object/ObjectFile.h>
using namespace llvm;


namespace llvm
{
	//https://stackoverflow.com/questions/62926039/how-to-solve-undefined-symbols-for-architecture-x86-64-error-when-using-c-api
	extern "C" void LLVMInitializeX86TargetInfo();
	extern "C" void LLVMInitializeX86Target();
	extern "C" void LLVMInitializeX86TargetMC();
	extern "C" void LLVMInitializeX86AsmParser();
	extern "C" void LLVMInitializeX86AsmPrinter();
}

void add_optimize(llvm::Module *llvm_module,llvm::Function* main)
{
	std::unique_ptr<llvm::legacy::FunctionPassManager> fpm = std::make_unique<llvm::legacy::FunctionPassManager>(&(*llvm_module));



	//some optimizes

#if 0
	fpm->add(llvm::createDeadStoreEliminationPass());
	fpm->add(llvm::createGVNPass());
	fpm->add(llvm::createPromoteMemoryToRegisterPass());
	fpm->add(llvm::createInstructionCombiningPass());
	fpm->add(llvm::createReassociatePass());
	fpm->add(llvm::createCFGSimplificationPass());
	fpm->add(llvm::createCorrelatedValuePropagationPass());
	fpm->run(*main);
#endif

}

void complie(llvm::Module* llvm_module, llvm::Function* main)
{
	//enable optimize

	add_optimize(llvm_module,main);

#if 0
	std::string target_triple = llvm::sys::getDefaultTargetTriple();

	llvm_module->setTargetTriple(target_triple);
	llvm::legacy::PassManager pass;

	llvm::Triple triple(target_triple);
	triple.setObjectFormat(Triple::COFF);

	llvm::LLVMInitializeX86TargetInfo();
	llvm::LLVMInitializeX86Target();
	llvm::LLVMInitializeX86TargetMC();
	llvm::LLVMInitializeX86AsmParser();
	llvm::LLVMInitializeX86AsmPrinter();

	std::string Error;
	llvm::TargetOptions opt;
	auto reloc_model = llvm::Optional< llvm::Reloc::Model>();
	const llvm::Target* target = llvm::TargetRegistry::lookupTarget(target_triple, Error);

	llvm::TargetMachine* target_machine = target->createTargetMachine(target_triple, "generic", "", opt, reloc_model);
	llvm_module->setDataLayout(target_machine->createDataLayout());

	llvm::SmallVector< char, 128 > buff;
	llvm::raw_svector_ostream dest(buff);
	target_machine->addPassesToEmitFile(pass, dest, nullptr, llvm::TargetMachine::CodeGenFileType::CGFT_ObjectFile);
	auto result = pass.run(*llvm_module);
	
	std::vector<uint8_t> obj = std::vector<uint8_t>(buff.begin(), buff.end());

	std::ofstream o("main.o", std::ios::binary);
	std::ostream_iterator<uint8_t> oi(o);
	std::copy(obj.begin(), obj.end(), oi);
#endif
}