class AddContatoToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :contato, :string
  end
end
