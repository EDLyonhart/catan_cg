Rails.application.routes.draw do

  root 'users#new'

  resources :users

  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end


#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         users#new
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#    signup GET    /signup(.:format)         users#new
#
#     login GET    /login(.:format)          sessions#new
#           POST   /login(.:format)          sessions#create
#    logout DELETE /logout(.:format)         sessions#destroy