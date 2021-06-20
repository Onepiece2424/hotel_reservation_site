class AddHotelnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :hotelname, :string
  end
end
