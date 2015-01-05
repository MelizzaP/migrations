class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :price
    end
  end
end
