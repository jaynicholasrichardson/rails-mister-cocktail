Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles, except: :index
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
end
