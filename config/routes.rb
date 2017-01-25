Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  resources :posts do
    resources :comments
  end

  root "posts#index"

  get 'about', to: 'pages#about'

end
