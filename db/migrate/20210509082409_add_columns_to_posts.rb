class AddColumnsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :roomname, :string
    add_column :posts, :introduction, :string
    add_column :posts, :price, :integer
    add_column :posts, :address, :string
  end
end
