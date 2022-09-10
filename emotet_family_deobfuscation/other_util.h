#include <fstream>
#include <vector>
using namespace std;

inline bool open_binary_file(const std::wstring& file,
    std::vector<uint8_t>& data) {
    std::ifstream fstr(file, std::ios::binary);
    if (!fstr.is_open()) return false;

    fstr.unsetf(std::ios::skipws);
    fstr.seekg(0, std::ios::end);

    const auto file_size = fstr.tellg();

    fstr.seekg(NULL, std::ios::beg);
    data.reserve(static_cast<uint32_t>(file_size));
    data.insert(data.begin(), std::istream_iterator<uint8_t>(fstr),
        std::istream_iterator<uint8_t>());
    return true;
}