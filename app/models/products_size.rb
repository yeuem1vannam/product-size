class ProductsSize < ApplicationRecord
  belongs_to :size
  belongs_to :product
  
  delegate :name, to: :size, allow_nil: true, prefix: true
  attr_accessor :is_enable
end
