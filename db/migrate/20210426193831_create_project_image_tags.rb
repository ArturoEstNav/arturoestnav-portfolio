class CreateProjectImageTags < ActiveRecord::Migration[6.0]
  def change
    create_table :project_image_tags do |t|
      t.references :image_tag, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
