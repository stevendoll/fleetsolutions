rails generate scaffold VehicleType name:string year:integer miles:float lifetime_miles:float mileage:float miles_per_year:float resale_value:float conversion_cost:float display_order:float
rails generate scaffold Fleet name:string quantity:integer vehicle_type_id:uuid miles:float lifetime_miles:float mileage:float miles_per_year:float maintenance_per_mile:float pays_for_fuel:string pays_for_maintenance:string resale_value:float percent_propane:float account_id:uuid
rails generate scaffold Account name:string address_1:text address_2:text city:string state:string zip:string
rails generate scaffold Station name:string address_1:text address_2:text city:string state:string zip:string account_id:uuid attended:boolean development_cost:float

rails generate scaffold EquipmentType name:string fuel_per_hour:float conversion_cost:float propane_factor:float display_order:float
rails generate scaffold Equipment name:string quantity:integer equipment_type_id:uuid fuel_per_hour:float hours_per_year:float conversion_cost:float percent_propane:float propane_factor:float account_id:uuid

rails generate scaffold Post title:string author_id:uuid published_on:date teaser:text body:text 
rails generate scaffold Comment commenter:string post_id:uuid email:string published_on:date body:text 








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

Barriers that keep great ideas from being put into action: knowing what to do, getting it done, and paying for it...

Tony and I had a great discussion with ... of the Montgomery Federal Credit Union on the structure of a working capital facility to support fleet conversions to bifuel propane. This would make it possible for Clear Skies, unique in the industry, to provide complete turn-key services for fleet conversions. Fleet owners can pocket the savings on day one.

Every fleet owner wants to do the right thing, benefit the environment while minimizing expenses. Yet barriers keep these ideas from being put into action: knowing what to do, getting it done, and paying for it. While Clear Skies has made great progress in the first two, the capital costs of converting fleet vehicles has remained a thorny obstacle. With this financing structure, we aim to put that behind us too.

The working capital facility would allow Clear Skies to completely finance a fleet conversion project, keeping the capital costs off the balance sheet of the fleet owner. This also means that Clear Skies accepts all risks of the project, and the fleet owner is able to fully participate in the savings while retaining the option to switch back to gasoline if desired. We this this is an opportunity too good to turn down.


