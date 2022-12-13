#pragma once

#include <vector>

#include "Client.hpp"

namespace bs {
  class ClientStorage {
    public:
      size_t AddClient(Client client);

      Client& GetClient(size_t index);

      size_t Size() const;
    private:
      std::vector<Client> clients_;
  };
}