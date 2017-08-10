Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
      get '/me', to: 'auth#show'
      resources :artists
      resources :events
      resources :pictures
      resources :posts
      resources :setlist_songs
      resources :setlists
      resources :songs
      resources :users
    end
  end
end
