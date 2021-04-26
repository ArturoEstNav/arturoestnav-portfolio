class CreateImageTags < ActiveRecord::Migration[6.0]
  def change
    create_table :image_tags do |t|
      t.string :tag

      t.timestamps
    end
  end
end
