Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resources :chatroom_users
  end

  root to: "chatrooms#index"

end
