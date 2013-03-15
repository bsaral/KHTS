KHTS::Application.routes.draw do
 
  root :to => "home#index"
  
  resources :sessions
  match "/login" => "sessions#new"
  match "/logout" => "sessions#destroy"
  
  resources :uploads
  match "/upload" => "uploads#new"
  match "/upload_show" => "uploads#index"
  match "/user_show" => "uploads#user_show"
  match 'download/:id' =>  'uploads#download', :as => :download
  
end
