class ProductIdRef < ActiveRecord::Migration
  def change
    add_reference :products, :customers
  end
end
