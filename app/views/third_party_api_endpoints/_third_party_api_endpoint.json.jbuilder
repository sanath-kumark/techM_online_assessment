json.extract! third_party_api_endpoint, :id, :endpoint, :created_at, :updated_at
json.url third_party_api_endpoint_url(third_party_api_endpoint, format: :json)
