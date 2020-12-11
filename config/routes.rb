Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:id/welcome', to: 'users#welcome'
  get '/users/first', to: 'users#first'
end
