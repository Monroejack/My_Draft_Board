Rails.application.routes.draw do
  get 'players/index'

  devise_for :users
  root 'welcome#index'
  get 'welcome/index'
  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'
  get 'all_players' => 'players#index'
  get 'players_quarterbacks' => 'players#quarterbacks'
  get 'boards' => 'boards#index'
  get 'boards/new' => 'boards#new'
  post 'boards/create' => 'boards#create'
  get 'boards/edit' => 'boards#edit'
  get 'boards/show' => 'boards#show'
  post 'boards/add' => 'boards#add'
  delete 'boards/delete' => 'boards#delete'
  patch 'add_player_to_board' => 'boards#add_player_to_board'
  patch 'move_player_up' => 'boards#move_player_up'
  patch 'move_player_down' => 'boards#move_player_down'
  patch 'remove_player' => 'boards#remove_player'
  get 'show_user' => 'welcome#show_user'
  get 'boards/view' => 'boards#view'
  get 'boards/download' => 'boards#download'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
