class CreateTaskItems < ActiveRecord::Migration[5.2]
  def change
    create_table :task_items do |t|
      t.string :content
      t.references :task_list, foreign_key: true

      t.timestamps
    end
  end
end
