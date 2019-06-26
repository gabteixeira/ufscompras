class Addfields < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nome, :string
    add_column :users, :sobrenome, :string
    add_column :users, :ra, :integer
  end
end
