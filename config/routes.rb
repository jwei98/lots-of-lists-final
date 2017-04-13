Rails.application.routes.draw do
  
  get '/application/index'
  root 'application#index'
  get '/contacts' => 'contacts#show'
  get '/contacts/new' => 'contacts#new'
end
