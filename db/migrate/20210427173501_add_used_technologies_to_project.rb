class AddUsedTechnologiesToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :used_technologies, :text
  end
end
