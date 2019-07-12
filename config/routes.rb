Rails.application.routes.draw do
  resources :challenges, except: [:destroy]
  resources :attempts, except: [:destroy]
  resources :users, except: [:destroy]
  resources :relationships
  resources :user_achievements, except: [:destroy]
  resources :achievements, except: [:destroy]
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # delete '/logout', to: 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
