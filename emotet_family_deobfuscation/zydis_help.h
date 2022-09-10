#include <Zydis/Zydis.h>
#include <Zydis/Utils.h>

thread_local std::shared_ptr<ZydisDecoder> g_decoder = nullptr;
thread_local std::shared_ptr<ZydisFormatter> g_formatter = nullptr;

namespace zydis {
    inline void init() {
        if (!g_decoder && !g_formatter) {
            g_decoder = std::make_shared<ZydisDecoder>();
            g_formatter = std::make_shared<ZydisFormatter>();

            ZydisDecoderInit(g_decoder.get(), ZYDIS_MACHINE_MODE_LONG_COMPAT_32,
                ZYDIS_ADDRESS_WIDTH_32);

            ZydisFormatterInit(g_formatter.get(),
                ZYDIS_FORMATTER_STYLE_INTEL);

            ZydisFormatterSetProperty(g_formatter.get(), ZYDIS_FORMATTER_PROP_FORCE_SEGMENT, ZYAN_TRUE);
            ZydisFormatterSetProperty(g_formatter.get(), ZYDIS_FORMATTER_PROP_FORCE_SIZE, ZYAN_TRUE);

            //https://github.com/zyantific/zydis/issues/27
            ZydisFormatterSetProperty(g_formatter.get(), ZYDIS_FORMATTER_PROP_FORCE_RELATIVE_RIPREL, ZYAN_TRUE);
        }
    }

    // 判断当前指令是否是ret指令
    bool is_ret(const ZydisDecodedInstruction& instr) {
        return instr.mnemonic == ZYDIS_MNEMONIC_RET;
    }

    bool is_call(const ZydisDecodedInstruction& instr) {
        return instr.mnemonic == ZYDIS_MNEMONIC_CALL;
    }

    void print(const ZydisDecodedInstruction& instr) {
        char buffer[256]{};
        ZydisFormatterFormatInstruction(g_formatter.get(), &instr, buffer,
            sizeof(buffer), 0u);
        std::puts(buffer);
    }

}

