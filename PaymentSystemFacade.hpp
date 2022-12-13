#pragma once

#include <string>

#include "BanksStorage.hpp"
#include "TransmissionManager.hpp"
#include "PercentManager.hpp"
#include "BankAccount.hpp" 

namespace bs {
  class PaymentSystemFacade {
  public:
    PaymentSystemFacade() = default;

    void CreateAccount(std::string bank, size_t client_id, AccountType account_type);

    // Client management
    void CreateClient(
      std::string bank,
      std::string name,
      std::string last_name
    );

    void FillClientData(
      std::string bank,
      size_t client, 
      std::optional<std::string> address, 
      std::optional<std::string> passport);

    ClientStorage& GetClients(
      std::string bank);
    
    Client& GetClient(
      std::string bank,
      size_t id);

    void MakeWithdraw(
      const std::string& bank_from, 
      size_t account_from, 
      int64_t amount
    );

    void MakeTopUp(
      const std::string& bank_to, 
      size_t account_to, 
      int64_t amount
    );

    void MakeTransfer(
      const std::string& bank_from, 
      size_t client_from, 
      const std::string& bank_to,
      size_t client_to,
      int64_t value);

    void UndoTransfer(size_t transaction_id);

    bool CreateBank( 
      std::string name, 
      size_t credit_percent, 
      size_t deposit_percent
    );

    BanksStorage& GetBankStorage();

  private:
    TransmissionManager transmission_manager_;
    PercentManager percent_manager_;
    BanksStorage data_;
  };
}
