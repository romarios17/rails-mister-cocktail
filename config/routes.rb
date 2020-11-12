Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :cocktails, only: [:index, :new, :show, :create] do
  resources :doses, only: [:new, :create]
 end

 # get '/cocktails/:id/doses/new', to: 'doses#new'
 # post '/cocktails/:id/doses', to: 'doses#create'
 delete '/doses/:id', to: 'doses#destroy'
end
