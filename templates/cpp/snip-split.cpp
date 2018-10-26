#include <iostream>
#include <vector>

std::vector<std::string> split_by_literal(std::string str, const char literal) {
  std::vector<std::string> v;
  std::string buf = "";
  for (const char c : str) {
    if (c == literal) {
      v.push_back(buf);
      buf = "";
    } else {
      buf += c;
    }
  }
  if (buf != "") v.push_back(buf);
  return v;
}
