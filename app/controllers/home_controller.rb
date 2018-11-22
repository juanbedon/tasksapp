class HomeController < ApplicationController
	before_action :check_user

  def landing
  end

  private

  def check_user
  	if user_signed_in?
  		redirect_to task_lists_path
  	else
  		root_path
  	end
  end
end
