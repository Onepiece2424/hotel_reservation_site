class CreateMyaccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :myaccounts do |t|
      t.string :icon
      t.text :introduction
      t.string :name

      t.timestamps
    end
  end
end
