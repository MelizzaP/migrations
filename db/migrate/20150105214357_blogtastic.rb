class Blogtastic < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password
      t.integer :age
    end
    
    create_table :posts do |t|
      t.belongs_to :users
      t.string :title, :content
    end
    
  end
end
