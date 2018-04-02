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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
