Rails.application.routes.draw do
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "topics#index"

  get '/about', to:'topics#about'

  resources :topics do
    member do
      post 'upvote'
      post 'devote'
    end
  end


end
