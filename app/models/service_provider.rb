class ServiceProvider < ApplicationRecord
  belongs_to :service

  validates_presence_of :name, :quantity, :price_in_gram, :price_in_btc, :price_in_ctlx
  validates_uniqueness_of :name
end
