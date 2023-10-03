class ThirdPartyApiEndpoint < ApplicationRecord
    validates :endpoint, presence: true, format: URI.regexp(%w(http https))
end
