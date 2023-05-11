Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :posts
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end