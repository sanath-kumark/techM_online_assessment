require 'net/http'
class Product < ApplicationRecord
    validates :name, presence: true, length: { minimum: 1, maximum: 100 }
    
    after_commit(on: [:create, :update]) do
        debugger
        endpoints = ThirdPartyApiEndpoint.all.each do|third_party|
            trigger_webhook(third_party.endpoint)
        end
    end
    
    def trigger_webhook(endpoint)
        payload = attributes["name"]
        url = endpoint
        url = URI(url)
        http = Net::HTTP.new(url.host, url.port)
        request_type = Net::HTTP::Post.new(url)
        outgoing_webhook = http.request(request_type)
    rescue Net::OpenTimeout
        puts "invalid url"
    end
end
