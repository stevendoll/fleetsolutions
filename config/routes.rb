Fleetsolutions::Application.routes.draw do

  resources :opportunities

  resources :equipment_types

  resources :posts do
    resources :comments
  end

  resources :opportunities do
    resources :fleets
    resources :stations
    resources :equipment
    #resources :calculator, controller: 'accounts/calculator'
  end

  resources :vehicle_types

  resources :calculator do
    resources :basic_info
    resources :add_vehicles
  end

  root :to => "home#index"

  
  get "/about_us" => "home#about_us"
  get "/contact" => "home#contact"
  get "/elements" => "home#elements"
  get "/services" => "home#services"
  get "/register" => "home#register"
  
  get "/calculator" => "calculator#new"
  
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end