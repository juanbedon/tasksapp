class AddUserIdToTaskLists < ActiveRecord::Migration[5.2]
  def change
  	add_column :task_lists, :user_id, :integer
  	add_index :task_lists, :user_id
  end
end
