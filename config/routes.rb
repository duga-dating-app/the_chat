Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => {:confirmations => "confirmations", :registrations => "registrations"}
  resources :users, :only =>[:show, :index]
  resources :conversations, only: [:index, :show, :destroy]
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :restore
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
  end
  root to: "users#index"
end
