Rails.application.routes.draw do
  devise_for :users
  resources :task_lists do
  	resources :task_items
  end

  root "task_lists#index"
end
