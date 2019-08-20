Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Create
  # 1. new
  get "tasks/new", to: "tasks#new", as: :new_task
  # 2. post
  post "tasks", to: "tasks#create"
  # Read
  get "tasks", to: "tasks#index" # tasks becomes the prefix
  get "tasks/:id", to: "tasks#show", as: :task
  # Update
  # 1. Get the form
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # 2. Patch the form
  patch "tasks/:id", to: "tasks#update"
  # Delete
  delete "tasks/:id", to: "tasks#destroy"
end
