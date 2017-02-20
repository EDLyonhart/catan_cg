Rails.application.routes.draw do

  root 'users#new'

  resources :users

  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'login_sessions#new'
  post   '/login',   to: 'login_sessions#create'
  delete '/logout',  to: 'login_sessions#destroy'
  
end


#    Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#    signup GET    /signup(.:format)         users#new
#     login GET    /login(.:format)          login_sessions#new
#           POST   /login(.:format)          login_sessions#create
#    logout DELETE /logout(.:format)         login_sessions#destroy
