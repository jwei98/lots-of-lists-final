Rails.application.routes.draw do
  
  devise_for :users
  resources :contacts do
    resources :comments
    resources :users
  end
  get '/application/index'
  root 'application#index'
  get '/contacts' => 'contacts#show'
  get '/contacts/new' => 'contacts#new'
end
