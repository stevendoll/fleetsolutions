Fleetsolutions::Application.routes.draw do

  resources :accounts do
    resources :fleets
    resources :stations
  end

  resources :vehicle_types

  root :to => "home#index"

  get "/about_us" => "home#about_us"
  get "/blog" => "home#blog"
  get "/contact" => "home#contact"
  get "/elements" => "home#elements"
  get "/gallery" => "home#gallery"
  get "/home_alternative" => "home#home_alternative"
  get "/page_alternative" => "home#page_alternative"
  get "/portfolio" => "home#portfolio"
  get "/portfolio_item" => "home#portfolio_item"
  get "/portfolio_item_2" => "home#portfolio_item_2"
  get "/services" => "home#services"
  get "/single_post" => "home#single_post"
  get "/register" => "home#register"

  get "/404" => "errors#not_found", as: "error_404"

  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end