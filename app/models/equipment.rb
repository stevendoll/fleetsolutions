class Equipment < ActiveRecord::Base
  normalize_attributes :equipment_type_id
  belongs_to :equipment_type
  belongs_to :opportunity

  validates_numericality_of :percent_propane, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 100.0
  validates_presence_of :quantity
  validates_numericality_of :quantity, :only_integer => true
  validates_presence_of :equipment_type_id
  #validates_presence_of :hours_per_year
  #validates_numericality_of :hours_per_year, :greater_than_or_equal_to => 1000.0

  def gasoline_gal
    @current_gasoline ||= quantity * fuel_per_hour * hours_per_year
  end

  def proposed_gasoline_gal
    @proposed_gasoline ||= quantity * fuel_per_hour * hours_per_year * (1- percent_propane/100)
  end

  def proposed_propane_gal
    @proposed_propane ||= quantity * fuel_per_hour * hours_per_year * (percent_propane/100) / propane_factor
  end

  def savings
    @savings ||= (gasoline_gal - proposed_gasoline_gal) * self.opportunity.gasoline_price - proposed_propane_gal * self.opportunity.propane_cost
  end

  def simple_payback
    @simple_payback ||= ( savings > 0 ? quantity * conversion_cost * (1 + self.opportunity.conversion_margin) / savings : 0 )
  end




end
