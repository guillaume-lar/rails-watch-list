Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb

resources :lists do
  resources :bookmarks, only: [:new, :create]
end


  resources :bookmarks do
  get 'new/:movie_id/:list_id', to: 'bookmarks#new', on: :collection
end
end


#  resources :gardens, only: [:index, :show] do
#     resources :plants, only: [:create]
#   end

#   resources :plants, only: [:destroy]
