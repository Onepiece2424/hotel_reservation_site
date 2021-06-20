class AddHotelnameToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :hotelname, :string
  end
end
