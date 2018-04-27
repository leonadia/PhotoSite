Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/index', to: 'user#index'
  get '/photos/index', to: 'photos#index'
  get 'move' => 'user#move', as: :move
  resources :photos

end
