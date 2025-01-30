Rails.application.routes.draw do
  resources :users, only: [ :create ]
  get '/users/searchBy/username/:username', to: 'users#search_by_username'
end
