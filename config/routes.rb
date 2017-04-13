Rails.application.routes.draw do
  
  resources :contacts do
    resources :comments
  end
  get '/application/index'
  root 'application#index'
  get '/contacts' => 'contacts#show'
  get '/contacts/new' => 'contacts#new'
end
