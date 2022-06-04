Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  scope  '/api/v1' do
    resources :priorities
  end

  resources :tasks do
    patch :toggle, on: :member
  end

  get 'password', to:'passwords#edit'
  patch 'password', to:'passwords#update'
  
  get 'sign_up',  to:'registrations#new'
  post 'sign_up', to:'registrations#create'
  
  get 'sign_in',  to:'sessions#new'
  post 'sign_in', to:'sessions#create'

  get 'password/reset', to:'password_resets#new'
  post 'password/reset', to:'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  delete 'logout', to:'sessions#destroy'

  root to: "main#index"
end
