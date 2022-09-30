class CreateProjectImages < ActiveRecord::Migration[7.0]
  def change
    create_table :project_images do |t|
      t.string :image_link
      t.integer :project_id
      

      t.timestamps
    end
  end
end

# 