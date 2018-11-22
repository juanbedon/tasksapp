class TaskItemsController < ApplicationController
	before_action :set_task_list
	before_action :set_task_item, except: [:create]

	def create
		@task_item = @task_list.task_items.create(task_item_params)
		redirect_to @task_list
	end

	def destroy
		if @task_item.destroy
			flash[:success] = "Task List item was deleted."
		else
			flash[:error] = "Task List item could not be deleted."
		end
		redirect_to @task_list
	end

	def complete
		@task_item.update_attribute(:completed_at, Time.now)
		redirect_to @task_list, notice: "Task item completed"
	end

	private

	def set_task_list
		#@task_list = TaskList.find(params[:task_list_id])
		@task_list = current_user.task_lists.find(params[:task_list_id])
	end

	def set_task_item
		#@task_item = @task_list.task_items.find(params[:id])
		@task_item = current_user.task_list.task_items.find(params[:id])
	end

	def task_item_params
		params[:task_item].permit(:content)
	end

end