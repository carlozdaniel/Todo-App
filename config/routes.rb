Rails.application.routes.draw do
  devise_for :users
  resources :articles, only: :index

  get "/bienvenida", to: "articles#index"
  get "perfil", to: "user#edit"
  root to: "home#index"
  resources :user, only: [:update]
  
  #get "articles/.pdf", to: "articles#index", as: :new_pdd
  
  resources :articles do 
    get "user/:user_id", to: "articles#from_author", on: :collection, as: :list
    get "user/:user_id/.pdf", to: "articles#from_author", on: :collection, as: :new_pdf

  end

  # get "articles", to: "articles#index"
  # get "articles/new", to: "articles#new", as: :new_articles
  # get "articles/:id", to: "articles#show"
  # get "articles/:id/edit", to: "articles#edit"

  # patch "/articles/:id", to: "articles#update", as: :article
  # post "articles", to: "articles#create"
  # delete "/articles/:id", to: "articles#destroy"
end
