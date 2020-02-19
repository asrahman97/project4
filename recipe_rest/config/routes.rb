Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :recipes do
    resources :reviews
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  get 'users/:id', to: 'users#show'

end