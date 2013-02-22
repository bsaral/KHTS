KHTS::Application.routes.draw do

  root :to => "home#index"
  
  resources :sessions
  match "/login" => "sessions#new"
  match "logout" => "sessions#destroy"
  
end
