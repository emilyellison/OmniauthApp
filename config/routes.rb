OmniauthApp::Application.routes.draw do
  
  root to: 'authentications#index'
  
  devise_for :users

  match '/auth/:provider/callback' => 'authentications#create'
  resources :authentications
end
