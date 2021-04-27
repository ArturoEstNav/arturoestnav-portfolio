class RemoveTechnologyTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :project_technologies
    drop_table :technologies
  end
end
