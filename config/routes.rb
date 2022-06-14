Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => {:confirmations => "confirmations", :registrations => "registrations"}
  resources :users, :only =>[:show, :index]
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
      delete :emptytrash
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :mark_as_read
    end
  end
  root to: "users#index"
end
