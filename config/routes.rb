Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :courses
  resources :notes
  get "about" => "home#about"
  get "terms-of-service" => "home#terms_of_service"
  get "privacy-policy" => "home#privacy_policy"
end
