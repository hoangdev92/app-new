Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "home#index"
  post '/signup', to: 'user#create'
  post '/login', to: 'user#login'

end
