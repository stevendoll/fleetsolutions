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
user = User.find_or_create_by_email :name => ENV['ADMIN2_NAME'].dup, :email => ENV['ADMIN2_EMAIL'].dup, :password => ENV['ADMIN2_PASSWORD'].dup, :password_confirmation => ENV['ADMIN2_PASSWORD'].dup, :first_name => 'Tony', :last_name => 'Pavlo', :work_phone => '', :mobile_phone => '', :title => 'Founder'
puts 'user: ' << user.name
user.add_role :admin
user.skip_confirmation!
user.save!

puts 'VEHICLE TYPES'
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2003', :year => '2003', :miles => '120000', :lifetime_miles => '300000', :mileage => '15.5', :resale_value => '4125', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '1')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2004', :year => '2004', :miles => '108000', :lifetime_miles => '300000', :mileage => '15', :resale_value => '4250', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '2')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2005', :year => '2005', :miles => '96000', :lifetime_miles => '300000', :mileage => '18', :resale_value => '4425', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '3')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2006', :year => '2006', :miles => '84000', :lifetime_miles => '300000', :mileage => '16.5', :resale_value => '5050', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '4')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2007', :year => '2007', :miles => '72000', :lifetime_miles => '300000', :mileage => '14.5', :resale_value => '7500', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '5')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2008', :year => '2008', :miles => '60000', :lifetime_miles => '300000', :mileage => '15', :resale_value => '8850', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '6')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2009', :year => '2009', :miles => '48000', :lifetime_miles => '300000', :mileage => '16', :resale_value => '9900', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '7')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2010', :year => '2010', :miles => '36000', :lifetime_miles => '300000', :mileage => '16', :resale_value => '10975', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '8')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Taxi - Ford Crown Victoria 2011', :year => '2011', :miles => '24000', :lifetime_miles => '300000', :mileage => '16', :resale_value => '11900', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '9')
vehicletype = VehicleType.find_or_create_by_name(:name => 'Other', :year => '2008', :miles => '100000', :lifetime_miles => '300000', :mileage => '16', :resale_value => '5000', :conversion_cost => '3500', :propane_factor => '0.85', :display_order => '99')
