Rails.application.routes.draw do

  devise_for :users
  resources :topics do
    collection do
      post :confirm
    end
  end

 root 'top#index'
end
