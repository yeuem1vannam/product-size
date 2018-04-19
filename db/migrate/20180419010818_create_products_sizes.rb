class CreateProductsSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :products_sizes do |t|
      t.references :size, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
