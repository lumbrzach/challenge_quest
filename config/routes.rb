Rails.application.routes.draw do
  resources :challenges
  resources :attempts
  resources :users
  resources :relationships
  resources :user_achievements
  resources :achievements
  get '/', to: 'welcomes#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
