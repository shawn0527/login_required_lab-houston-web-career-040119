Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to:'application#hello'

  get '/login', to:'sessions#new'
  post 'login', to:'sessions#create'
  get '/secrets/show', to:'secrets#show'
  post '/logout', to:'sessions#destroy'
end
