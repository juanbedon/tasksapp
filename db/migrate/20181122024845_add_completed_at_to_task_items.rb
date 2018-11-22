class AddCompletedAtToTaskItems < ActiveRecord::Migration[5.2]
  def change
    add_column :task_items, :completed_at, :datetime
  end
end
