class Product < ApplicationRecord
  has_many :products_sizes
  has_many :sizes, through: :products_sizes
  
  accepts_nested_attributes_for :products_sizes, reject_if: :invalid_products_sizes?
  
  private

  def invalid_products_sizes?(attributed)
    return true if attributed[:is_enable].to_i != 1
    return true if attributed[:size_id].to_i <= 0
    return true if attributed[:price].to_i <= 0
  end
end
