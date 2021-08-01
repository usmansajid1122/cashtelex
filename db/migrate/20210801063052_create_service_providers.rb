class CreateServiceProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :service_providers do |t|
      t.references :service
      t.string     :name
      t.string     :country
      t.string     :state
      t.string     :city
      t.float      :quantity
      t.float      :price_in_gram
      t.float      :price_in_btc
      t.float      :price_in_ctlx
      t.integer    :zipcode
      t.string     :address
      t.text       :description
      t.timestamps
    end
  end
end
