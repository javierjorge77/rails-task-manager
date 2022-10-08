Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  #########          READ        #########
  root "tasks#index"
  get "tasks", to: "tasks#index"

  #########          CREATE        #########
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  #########          UPDATE        #########
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  #########          DESTROY        #########
  delete "tasks/:id", to: "tasks#destroy"

  #########          SHOW BY ID        #########
  get "tasks/:id", to: "tasks#show", as: :task

end
