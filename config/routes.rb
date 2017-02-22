Rails.application.routes.draw do

  get 'turns/new'

  get 'turns/create'

  get 'turns/update'
  
  root 'users#new'
  resources :players
  resources :users
  resources :games
  resources :gameboards

  get    '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end


#         Prefix Verb   URI Pattern                    Controller#Action
#      turns_new GET    /turns/new(.:format)           turns#new
#   turns_create GET    /turns/create(.:format)        turns#create
#   turns_update GET    /turns/update(.:format)        turns#update
#           root GET    /                              users#new
#        players GET    /players(.:format)             players#index
#                POST   /players(.:format)             players#create
#     new_player GET    /players/new(.:format)         players#new
#    edit_player GET    /players/:id/edit(.:format)    players#edit
#         player GET    /players/:id(.:format)         players#show
#                PATCH  /players/:id(.:format)         players#update
#                PUT    /players/:id(.:format)         players#update
#                DELETE /players/:id(.:format)         players#destroy
#          users GET    /users(.:format)               users#index
#                POST   /users(.:format)               users#create
#       new_user GET    /users/new(.:format)           users#new
#      edit_user GET    /users/:id/edit(.:format)      users#edit
#           user GET    /users/:id(.:format)           users#show
#                PATCH  /users/:id(.:format)           users#update
#                PUT    /users/:id(.:format)           users#update
#                DELETE /users/:id(.:format)           users#destroy
#          games GET    /games(.:format)               games#index
#                POST   /games(.:format)               games#create
#       new_game GET    /games/new(.:format)           games#new
#      edit_game GET    /games/:id/edit(.:format)      games#edit
#           game GET    /games/:id(.:format)           games#show
#                PATCH  /games/:id(.:format)           games#update
#                PUT    /games/:id(.:format)           games#update
#                DELETE /games/:id(.:format)           games#destroy
#     gameboards GET    /gameboards(.:format)          gameboards#index
#                POST   /gameboards(.:format)          gameboards#create
#  new_gameboard GET    /gameboards/new(.:format)      gameboards#new
# edit_gameboard GET    /gameboards/:id/edit(.:format) gameboards#edit
#      gameboard GET    /gameboards/:id(.:format)      gameboards#show
#                PATCH  /gameboards/:id(.:format)      gameboards#update
#                PUT    /gameboards/:id(.:format)      gameboards#update
#                DELETE /gameboards/:id(.:format)      gameboards#destroy
#         signup GET    /signup(.:format)              users#new
#          login GET    /login(.:format)               sessions#new
#                POST   /login(.:format)               sessions#create
#         logout DELETE /logout(.:format)              sessions#destroy
