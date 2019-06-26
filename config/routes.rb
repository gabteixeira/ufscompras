Rails.application.routes.draw do
  resources :posts
  devise_for :users 
  get 'pages/index'
  get 'posts', controller:'posts', action:'posts', as: 'newpost'
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
