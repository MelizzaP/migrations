class BlogtasticUpdate < ActiveRecord::Migration
  def change
    remove_column :users, :age, :integer
    add_column :users, :zipcode, :integer
    add_column :posts, :flag, :boolean
  end
end
