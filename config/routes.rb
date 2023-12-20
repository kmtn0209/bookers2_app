Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => 'homes#about', as: 'about'
  post 'books' => 'books#create'
  post 'users' => 'users#create'
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id' => 'users#show'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
