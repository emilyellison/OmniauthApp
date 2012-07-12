OmniauthApp::Application.routes.draw do
  devise_for :users

  match '/auth/:provider/callback' => 'authentications#create'
  resources :authentications
end
