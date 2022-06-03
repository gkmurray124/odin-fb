Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  
  resources :users, only: :show do 
    get 'posts'
  end 

  get '/users', to: 'users#show'

  resources :posts
end
