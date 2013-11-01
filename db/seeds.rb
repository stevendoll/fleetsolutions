# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
role = Role.find_or_create_by_name(:name => 'admin')
role = Role.find_or_create_by_name(:name => 'user')
role = Role.find_or_create_by_name(:name => 'customer')
role = Role.find_or_create_by_name(:name => 'VIP')

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup, :first_name => 'Steven', :last_name => 'Doll', :work_phone => '202-386-0190', :mobile_phone => '202-386-0190', :title => 'Founder'
puts 'user: ' << user.name
user.add_role :admin
user.skip_confirmation!
user.save!
# user = User.find_or_create_by_email :name => ENV['ADMIN2_NAME'].dup, :email => ENV['ADMIN2_EMAIL'].dup, :password => ENV['ADMIN2_PASSWORD'].dup, :password_confirmation => ENV['ADMIN2_PASSWORD'].dup, :first_name => 'Tony', :last_name => 'Pavlo', :work_phone => '', :mobile_phone => '', :title => 'Founder'
# puts 'user: ' << user.name
# user.add_role :admin
# user.skip_confirmation!
# user.save!

puts 'VEHICLE TYPES'
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford Crown Victoria, Mercury Marquis, Lincoln Town Car', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '16', :resale_value => '11900', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '1') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Chevrolet Suburban', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '15', :resale_value => '26996', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '2') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Toyota Sienna Minivan', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '19', :resale_value => '18031', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '3') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Toyota Camry', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '21', :resale_value => '14147', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '4') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Chevrolet Malibu', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '22', :resale_value => '13121', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '5') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-150 V6 Pickup', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '17', :resale_value => '16284', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '6') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-150 V8 Pickup', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '15', :resale_value => '21600', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '7') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-250 Pickup', :year => '2010', :miles => '36000', :lifetime_miles => '300000', :mileage => '13', :resale_value => '7989', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '8') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-150 Van/Wagon', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '13', :resale_value => '5724', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '9') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-250 Van/Wagon', :year => '2010', :miles => '36000', :lifetime_miles => '300000', :mileage => '13', :resale_value => '7989', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '10') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-350 Van/Wagon', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '13', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '11') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-350 SRW Cutaway', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '12') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-350 DRW Cutaway', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '13') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford E-450 DRW Cutaway', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '14') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-450 Chassis Cab', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '15') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-550 Chassis Cab', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '16') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-650 Chassis Cab', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '17') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-59 Strip Chassis', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '18') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-53 Strip Chassis', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '19') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Ford F-450 Strip Chassis', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '20') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Blue Bird Vision School Bus', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '21') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Micro Bird School Bus', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '11', :resale_value => '6052', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '22') 
vehicletype = VehicleType.find_or_create_by_name(:name => 'Other', :year => '2010', :miles => '36000', :lifetime_miles => '300000', :mileage => '15', :resale_value => '10000', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '23') 

puts 'EQUIPMENT TYPES'
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Walk Mower (greens)', :fuel_per_hour => '0.09', :conversion_cost => '600', :propane_factor => '0.85', :display_order => '1') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Large Reel Mower (fairway)', :fuel_per_hour => '0.88', :conversion_cost => '900', :propane_factor => '0.85', :display_order => '2') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Large Reel Mower (short rough)', :fuel_per_hour => '0.88', :conversion_cost => '900', :propane_factor => '0.85', :display_order => '3') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Large Rotary', :fuel_per_hour => '1.54', :conversion_cost => '1100', :propane_factor => '0.85', :display_order => '4') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Home Lawnmower', :fuel_per_hour => '0.21', :conversion_cost => '600', :propane_factor => '0.85', :display_order => '5') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Trim Mower', :fuel_per_hour => '0.79', :conversion_cost => '900', :propane_factor => '0.85', :display_order => '6') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Riding Greens Mower', :fuel_per_hour => '0.57', :conversion_cost => '900', :propane_factor => '0.85', :display_order => '7') 
equipmenttype = EquipmentType.find_or_create_by_name(:name => 'Other', :fuel_per_hour => '1.0', :conversion_cost => '1500', :propane_factor => '0.85', :display_order => '8') 

puts 'POSTS'
post = Post.find_or_create_by_name(:title => 'Excitement at LPG show and tell in Maryland', :teaser => 'There was some excitement for the steady growth in LPG fleet projects at the MAGPA event in Maryland.', :body => 'There was some excitement for the steady growth in LPG fleet projects at the MAGPA event in Maryland. ') 
post = Post.find_or_create_by_name(:title => 'Great discussion with Montgomery Federal Credit Union', :teaser => 'Barriers to action? knowing what to do, getting it done, and paying for it...', :body => '<p>Tony and I had a great discussion at the Montgomery Federal Credit Union on the structure of a working capital facility to support fleet conversions to bi-fuel propane. This would make it possible for Clear Skies, unique in the industry, to provide complete turn-key services for fleet conversions. Fleet owners can pocket the savings on day one.</p>

<blockquote>Every fleet owner wants to do the right thing, benefit the environment while minimizing expenses. Yet barriers keep these ideas from being put into action: knowing what to do, getting it done, and paying for it. While Clear Skies has made great progress in the first two, the capital costs of converting fleet vehicles has remained a thorny obstacle. With this financing structure, we aim to put that behind us too.</blockquote>

<p>The working capital facility would allow Clear Skies to completely finance a fleet conversion project, keeping the capital costs off the balance sheet of the fleet owner. This also means that Clear Skies accepts all risks of the project, and the fleet owner is able to fully participate in the savings while retaining the option to switch back to gasoline if desired. We this this is an opportunity too good to turn down.</p>') 
