Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => 'homes#about', as: 'about'
  post 'books' => 'books#create'
  post 'users' => 'users#create'
  get '/users/:id/edit' => 'users#edit'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:new, :create, :index, :show,]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
