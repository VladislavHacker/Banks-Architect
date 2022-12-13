#include "helpers.hpp"

size_t GetCurrentTimestamp() {
  auto now = std::chrono::system_clock::now();
  return std::chrono::duration_cast<std::chrono::seconds>(now.time_since_epoch()).count();
}