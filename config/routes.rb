Rails.application.routes.draw do
  root to: "pages#home"
  resources :games, only: [:show, :create]
end
