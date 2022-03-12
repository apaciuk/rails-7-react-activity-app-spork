class CreateTaskActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :task_activities do |t|
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
