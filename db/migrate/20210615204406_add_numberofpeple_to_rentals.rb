class AddNumberofpepleToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :numberofpeple, :string
  end
end
