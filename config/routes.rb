Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tasks', to:'tasks#index'

  get 'sign_up',  to:'registrations#new'
  post 'sign_in', to:'registrations#create'
  delete 'logout', to:'sessions#destroy'

  root to: "main#index"
end
