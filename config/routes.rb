Rails.application.routes.draw do
  root to: "home#index"
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations', :omniauth_callbacks => "users/omniauth_callbacks" }
  # get '/users/auth/facebook/callback', to: redirect('/accounts/auth/facebook/callback')
  get '/users/auth/facebook/callback' => 'registrations#make_default' 
  post '/users/auth/facebook/callback' => 'registrations#make_default' 
  resources :courses
  resources :notes
  get 'notes/:id/download' => 'notes#download'

  get "about" => "home#about"
  get "terms-of-service" => "home#terms_of_service"
  get "privacy-policy" => "home#privacy_policy"

  # error pages
  %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
end
