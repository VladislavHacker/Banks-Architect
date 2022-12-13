#pragma once

#include <vector>

#include "Client.hpp"

namespace bs {
  class ClientStorage {
    public:
      size_t AddClient(Client client);

      Client& GetClient(size_t index);

      auto begin() {
        return clients_.begin();
      }

      auto end() {
        return clients_.end();
      }
      
      size_t Size() const;
    private:
      std::vector<Client> clients_;
  };
}