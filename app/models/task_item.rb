# == Schema Information
#
# Table name: task_items
#
#  id           :bigint(8)        not null, primary key
#  content      :string
#  task_list_id :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  completed_at :datetime
#

class TaskItem < ApplicationRecord
  belongs_to :task_list
  belongs_to :user

  def completed?
  	!completed_at.blank?
  end
end
