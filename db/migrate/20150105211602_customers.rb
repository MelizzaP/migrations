class Customers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :product_id
      t.decimal :total
    end
  end
end
