Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => {:confirmations => "confirmations", :registrations => "registrations"}
  resources :users, :only =>[:show, :index]
  root to: "users#index"
end
