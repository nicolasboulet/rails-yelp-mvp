Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create]
  end

  namespace :admin do
    resources :restaurants
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
