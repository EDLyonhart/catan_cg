Rails.application.routes.draw do

  get 'turns/new'

  get 'turns/create'

  get 'turns/update'

  get 'games/new'
  get 'games/create'
  get 'games/update'
  get 'games/show'
  get 'players/new'
  get 'players/create'
  get 'players/update'
  get 'players/show'
  
  root 'users#new'

  resources :users

  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end


#         Prefix Verb   URI Pattern               Controller#Action
#      games_new GET    /games/new(.:format)      games#new
#   games_create GET    /games/create(.:format)   games#create
#   games_update GET    /games/update(.:format)   games#update
#     games_show GET    /games/show(.:format)     games#show
#    players_new GET    /players/new(.:format)    players#new
# players_create GET    /players/create(.:format) players#create
# players_update GET    /players/update(.:format) players#update
#   players_show GET    /players/show(.:format)   players#show
#           root GET    /                         users#new
#          users GET    /users(.:format)          users#index
#                POST   /users(.:format)          users#create
#       new_user GET    /users/new(.:format)      users#new
#      edit_user GET    /users/:id/edit(.:format) users#edit
#           user GET    /users/:id(.:format)      users#show
#                PATCH  /users/:id(.:format)      users#update
#                PUT    /users/:id(.:format)      users#update
#                DELETE /users/:id(.:format)      users#destroy
#         signup GET    /signup(.:format)         users#new
#          login GET    /login(.:format)          sessions#new
#                POST   /login(.:format)          sessions#create
#         logout DELETE /logout(.:format)         sessions#destroy