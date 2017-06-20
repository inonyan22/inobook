Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'top#index'
  resources :topics do
    resources :comments
    post :confirm, on: :collection
  end
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
