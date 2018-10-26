#include <fstream>
#include <iostream>
#include <string>

std::string load_file(const char* filename) {
  std::ifstream ifs(filename);
  if (ifs.fail()) {
    std::cerr << "failed." << std::endl;
    exit(1);
  }
  std::istreambuf_iterator<char> it(ifs);
  std::istreambuf_iterator<char> last;
  std::string str(it, last);
  return str;
}
