#include "PaymentSystemFacade.hpp"

namespace bs {
  bool PaymentSystemFacade::CreateBank(
    std::string name, 
    size_t credit_percent, 
    size_t deposit_percent) {
      data_.CreateBank(std::move(name), credit_percent, deposit_percent);
      return true;
  }

  Client& PaymentSystemFacade::GetClient(
    std::string bank,
    size_t id) {
      return data_.GetBank(bank).GetClients().GetClient(id);
  }

  ClientStorage& PaymentSystemFacade::GetClients(
    std::string bank) {
      return data_.GetBank(bank).GetClients();
  }

  void PaymentSystemFacade::CreateClient(
    std::string bank,
    std::string name, 
    std::string last_name
  ) {
     data_.GetBank(bank).CreateClient(name, last_name);
  }

  void PaymentSystemFacade::FillClientData(
      std::string bank,
      size_t client,
      std::optional<std::string> address, 
      std::optional<std::string> passport) {
    data_.GetBank(bank).FillClientData(client, address, passport);
  }

  BanksStorage& PaymentSystemFacade::GetBankStorage() { return data_; }
}