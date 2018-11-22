Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  resources :task_lists do
  	resources :task_items do
  		member do
  			patch :complete
  		end
  	end
  end

  root "home#landing"
end
