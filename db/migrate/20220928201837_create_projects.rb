class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_languages
      t.string :project_description
      t.string :project_images

      t.timestamps
    end
  end
end
