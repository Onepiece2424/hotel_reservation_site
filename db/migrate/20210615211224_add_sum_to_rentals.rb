class AddSumToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :pricesum, :string
  end
end
