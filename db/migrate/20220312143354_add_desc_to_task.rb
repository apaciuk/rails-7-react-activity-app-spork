class AddDescToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :task_activities, :description, :text
  end
end
