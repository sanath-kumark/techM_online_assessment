class CreateThirdPartyApiEndpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :third_party_api_endpoints do |t|
      t.string :endpoint

      t.timestamps
    end
  end
end
