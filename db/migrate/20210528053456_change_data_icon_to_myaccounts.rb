class ChangeDataIconToMyaccounts < ActiveRecord::Migration[6.1]
  def change
    change_column :myaccounts, :icon, :binary
  end
end
