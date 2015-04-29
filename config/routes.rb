Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  resources :courses
  resources :notes
  get "about" => "home#about"
end
