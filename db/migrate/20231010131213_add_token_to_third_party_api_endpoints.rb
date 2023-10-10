class AddTokenToThirdPartyApiEndpoints < ActiveRecord::Migration[7.0]
  def change
    add_column :third_party_api_endpoints, :token, :string
  end
end
