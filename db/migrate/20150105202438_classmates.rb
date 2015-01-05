# bundle exec rake generate:migration name=classmates
class Classmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :name, :hair_color
      t.integer :age
    end
  end
end
