Fleetsolutions::Application.routes.draw do

  resources :posts do
    resources :comments
  end

  resources :accounts do
    resources :fleets
    resources :stations
  end

  resources :vehicle_types

  root :to => "home#index"

  
  get "/about_us" => "home#about_us"
  get "/contact" => "home#contact"
  get "/elements" => "home#elements"
  get "/services" => "home#services"
  get "/register" => "home#register"
  
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end