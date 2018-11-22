class TaskItem < ApplicationRecord
  belongs_to :task_list
  belongs_to :user

  def completed?
  	!completed_at.blank?
  end
end
