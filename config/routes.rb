Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
end
