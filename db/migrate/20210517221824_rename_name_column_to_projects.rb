class RenameNameColumnToProjects < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :name, :word
  end
end
