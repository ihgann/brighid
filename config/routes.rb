Rails.application.routes.draw do
  root to: "home#index"
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :courses
  resources :notes
  get "about" => "home#about"
  get "terms-of-service" => "home#terms_of_service"
  get "privacy-policy" => "home#privacy_policy"

  # error pages
  %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
end
