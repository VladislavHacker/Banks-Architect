#include "Client.hpp"

namespace bs {
  Client::Client(std::string name, std::string last_name) 
    : name_(std::move(name)), last_name_(std::move(last_name)) {
  }
  
  size_t Client::GetId() const { 
    return id_; 
  }

  const std::string& Client::GetName() const {
    return name_;
  }

  const std::string& Client::GetLastName() const {
    return last_name_;
  }

  bool Client::IsVerified() const {
    return address_ && passport_number_;
  }

  const std::string& Client::GetAddress() const {
    return *address_;
  }

  const std::string& Client::GetPassportNumber() const {
    return *passport_number_;
  }

  std::ostream& operator << (std::ostream& out, const Client& client) {
    out << client.GetName() << std::endl;
    out << client.GetLastName() << std::endl;
    out << client.GetAddress() << std::endl;
    out << client.GetPassportNumber() << std::endl;
    return out;
  }
}