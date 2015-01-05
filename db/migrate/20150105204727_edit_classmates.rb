class EditClassmates < ActiveRecord::Migration
  def change
      remove_column :classmates, :name, :string
      add_column :classmates, [:first_name, :last_name], :string
      add_column :classmates, :ssn, :integer, unique: true
  end
end
