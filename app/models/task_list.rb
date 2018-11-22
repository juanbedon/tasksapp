# == Schema Information
#
# Table name: task_lists
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class TaskList < ApplicationRecord
	has_many :task_items
	belongs_to :user
end
