Rails.application.routes.draw do
  root to: "pages#home"
  resources :games, only: [:show, :create]
  resources :players do
    resources :scores, only: [:create]
  end
end
