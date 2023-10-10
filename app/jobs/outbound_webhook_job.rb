class OutboundWebhookJob < ApplicationJob
    queue_as :default
    sidekiq_options retry: 5
    
    def perform(name, third_party)
        begin
            require 'net/http'
            payload = { 
                product_name: name,
                token: third_party.token,
                time: Time.now
            }
            url = third_party.endpoint
            url = URI(url)
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            request_type = Net::HTTP::Post.new(url)
            outgoing_webhook = http.request(request_type)
            Rails.logger.info ">>>>>>>>>>>>>>>>>>>>webhook::#{payload}::sent>>>>>>>>>>>>>>>>>>>"
        rescue Exception => e
            puts e.message
        end
    end
end