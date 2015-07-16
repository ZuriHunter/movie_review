Rails.application.routes.draw do
  

  devise_for :users
  
  resources :movies do
    resources :reviews, except: [:show, :index]
  end 
  #allows for nesting routes within example movie/movie_id/review 
  
  root 'movies#index'

end
