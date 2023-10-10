class Product < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1, maximum: 100 }
    
    after_commit(on: [:create, :update]) do
        endpoints = ThirdPartyApiEndpoint.all.each do|third_party|
            OutboundWebhookJob.perform_later(attributes["name"], third_party)
        end
    end
end
