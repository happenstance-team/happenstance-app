Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'

  resources :conversations
  resources :messages
  resources :interests
  resources :matches
  resources :interests
  resources :user_interests

end
