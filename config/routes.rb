Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/about'
  resources :articles do
    resources :comments
  end
end
