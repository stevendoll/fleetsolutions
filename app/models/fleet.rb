class Fleet < ActiveRecord::Base
  belongs_to :vehicle_type
  belongs_to :account
end
