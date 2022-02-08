class CreateProductSpecs < ActiveRecord::Migration
  def change
    create_table :product_specs do |t|

      t.timestamps null: false
    end
  end
end
