Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "projects/new", to: "projects#new"
  post "projects", to: "projects#create"
  get "projects/:id/edit", to: "projects#edit"
  patch "projects/:id", to: "projects#update"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:new, :create]
end
