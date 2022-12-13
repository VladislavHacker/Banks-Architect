#pragma once

#include <string>
#include <optional>
#include <iostream>

namespace bs {

class Client {
public:
  Client(std::string name, std::string last_name);

  void FillAdditionalData(
    std::optional<std::string> address,
    std::optional<std::string> passport_number
  ) {
    if (address) {
      address_ = *address;
    }
    if (passport_number) {
      passport_number_ = *passport_number;
    }
  }

  bool IsVerified() const;

  size_t GetId() const;

  const std::string& GetName() const;

  const std::string& GetLastName() const;

  const std::string& GetAddress() const;

  const std::string& GetPassportNumber() const;

private:
  size_t id_;
  std::string name_;
  std::string last_name_;
  std::optional<std::string> address_;
  std::optional<std::string> passport_number_;
};

}
