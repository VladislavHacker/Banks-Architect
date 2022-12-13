#include "ClientStorage.hpp"

namespace bs {
 
    size_t ClientStorage::AddClient(Client client) {
      clients_.emplace_back(std::move(client));
      return clients_.size() - 1;
    }

    Client& ClientStorage::GetClient(size_t index) {
      return clients_[index];
    }

    size_t ClientStorage::Size() const {
      return clients_.size();
    }
}