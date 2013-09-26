class Equipment < ActiveRecord::Base
  normalize_attributes :equipment_type_id
  belongs_to :equipment_type
  belongs_to :account

  validates_numericality_of :percent_propane, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 100.0
  validates_presence_of :quantity
  validates_numericality_of :quantity, :only_integer => true
  validates_presence_of :equipment_type_id
  #validates_presence_of :hours_per_year
  #validates_numericality_of :hours_per_year, :greater_than_or_equal_to => 1000.0
end
