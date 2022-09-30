class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :project_images, :project_cover
  end
end
