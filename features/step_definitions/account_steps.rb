### UTILITY METHODS ###

def create_visitor_account
  @visitor_account ||= { :name => "My Test Taxi Company" }
end

def create_vehicle_group
  @visitor_vehicle_group ||= { :name => "My cars" }
end


def find_account
  @account ||= Account.first conditions: {:name => @visitor_account[:name]}
end

def create_account
  create_visitor_account
  #delete_account
  @account = FactoryGirl.create(:account, name: @visitor_account[:name])
end

def delete_account
  @account ||= Account.first conditions: {:name => @visitor_account[:name]}
  @account.destroy unless @account.nil?
end

def new_account
  #delete_account
  visit '/accounts/new'
  fill_in "Name", :with => @visitor_account[:name]
  click_button "Submit"
  #find_account
end

### GIVEN ###


### WHEN ###
When /^I enter valid vehicle data$/ do
  create_visitor_account
  create_vehicle_group
  new_account
end

When /^I go to the estimate form$/ do
  new_account
end
