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

  void PaymentSystemFacade::UndoTransfer(size_t transaction_id) {
  }

  void PaymentSystemFacade::MakeTransfer(
      const std::string& bank_from, 
      size_t client_from, 
      const std::string& bank_to,
      size_t client_to,
      int64_t value) {
  }

  void PaymentSystemFacade::MakeWithdraw(
    const std::string& bank_from, 
    size_t account_from, 
    int64_t amount) {
      data_.GetBank(bank_from).GetBankAccount(account_from).Withdraw(amount);
  }

  void PaymentSystemFacade::MakeTopUp(
    const std::string& bank_to, 
    size_t account_to, 
    int64_t amount) {
      data_.GetBank(bank_to).GetBankAccount(account_to).TopUp(amount);
  }

  BanksStorage& PaymentSystemFacade::GetBankStorage() { return data_; }
}