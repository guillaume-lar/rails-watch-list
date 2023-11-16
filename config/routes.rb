Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: [:create]
  
end


#  resources :gardens, only: [:index, :show] do
#     resources :plants, only: [:create]
#   end

#   resources :plants, only: [:destroy]
