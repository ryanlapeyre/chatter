Rails.application.routes.draw do
  resources :chatrooms do
    resources :chatroom_users
  end

  devise_for :users

  root to: "chatrooms#index"

end
