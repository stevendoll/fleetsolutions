rails generate scaffold VehicleType name:string year:integer miles:float lifetime_miles:float mileage:float miles_per_year:float resale_value:float conversion_cost:float display_order:float
rails generate scaffold Fleet name:string quantity:integer vehicle_type_id:uuid miles:float lifetime_miles:float mileage:float miles_per_year:float maintenance_per_mile:float pays_for_fuel:string pays_for_maintenance:string resale_value:float percent_propane:float account_id:uuid
rails generate scaffold Account name:string address_1:text address_2:text city:string state:string zip:string
rails generate scaffold Station name:string address_1:text address_2:text city:string state:string zip:string account_id:uuid attended:boolean development_cost:float

Account
fuel royalties per gallon


vehicle
conversion charge per vehicle








rails new rigilapp -m https://raw.github.com/RailsApps/rails-composer/master/composer.rb

config.action_mailer.default_url_options = { :host => 'localhost:3000' }

gem unpack ../../rails_strap-1.0.3.gem

gem install --version '2.2.6' twitter-bootstrap-rails
gem 'rails_12factor'

config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

add font-awesome gem
add to application.css
 *= require font-awesome


rails generate scaffold Location name:string address_1:text address_2:text city:string state:string zip:string
rails generate scaffold Faq question:string answer:text email:string published:boolean display_order:float
rails generate scaffold CommentType name:string display_order:float
rails generate scaffold StatusType name:string display_order:float



rails generate scaffold Project name:string description:text started_on:datetime ended_on:datetime display_order:float
rails generate scaffold Status title:string description:text status_on:datetime status_type_id:uuid created_by:uuid project_id:uuid
rails generate scaffold Inquiry email:string description:text
rails generate scaffold Feedback email:string feedback_text:text
rails generate scaffold Comment employee_id:uuid creator_id:uuid description:text comment_type_id:uuid

