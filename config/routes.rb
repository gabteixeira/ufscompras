Rails.application.routes.draw do
  resources :posts do
    resources :comments
    member do
      put "like", controller: 'posts', action:'upvote'
      put "unlike", controller:'posts', action:'downvote'
    end
  end
  devise_for :users
  get 'pages', controller:'pages', action:'userPage', as: 'usuario'
  get 'pages/index'
  get 'posts', controller:'posts', action:'posts', as: 'newpost'
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
