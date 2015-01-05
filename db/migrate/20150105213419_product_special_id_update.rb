class ProductSpecialIdUpdate < ActiveRecord::Migration
  def change
    add_column :products, :special_id, :integer, unique: true
  end
end
