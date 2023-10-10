class ThirdPartyApiEndpoint < ApplicationRecord
    validates :endpoint, url: true, presence: true
end
