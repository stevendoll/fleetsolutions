class Fleet < ActiveRecord::Base
  normalize_attributes :vehicle_type_id
  belongs_to :vehicle_type
  belongs_to :account

  validates_numericality_of :percent_propane, :greater_than_or_equal_to => 0.0, :less_than_or_equal_to => 100.0
  validates_presence_of :quantity
  validates_numericality_of :quantity, :only_integer => true
  validates_presence_of :vehicle_type_id
  validates_presence_of :miles_per_year
  validates_numericality_of :miles_per_year, :greater_than_or_equal_to => 1000.0
  validates_presence_of :pays_for_fuel
  validates_presence_of :pays_for_maintenance


  def fleet_value
    @fleet_value ||= quantity * resale_value
  end
  def gasoline_gal
    @current_gasoline ||= quantity * miles_per_year / mileage
  end

  def driver_gasoline_gal
    @driver_gasoline ||= (pays_for_fuel == 'Driver' ? quantity * miles_per_year / mileage : 0)
  end

  def company_gasoline_gal
    @company_gasoline ||= (pays_for_fuel == 'Company' ? quantity * miles_per_year / mileage : 0)
  end

  def proposed_gasoline_gal
    @proposed_gasoline ||= quantity * miles_per_year * (1- percent_propane/100) / mileage
  end

  def proposed_driver_gasoline_gal
    @proposed_driver_gasoline ||= (pays_for_fuel == 'Driver' ? quantity * miles_per_year * (1- percent_propane/100) / mileage : 0)
  end

  def proposed_company_gasoline_gal
    @proposed_company_gasoline ||= (pays_for_fuel == 'Company' ? quantity * miles_per_year * (1- percent_propane/100) / mileage : 0)
  end

  def proposed_propane_equivalent_gal
    @proposed_propane_equiv ||= quantity * miles_per_year * (percent_propane/100) / mileage
  end

  def proposed_driver_propane_equivalent_gal
    @proposed_driver_propane ||= (pays_for_fuel == 'Driver' ? quantity * miles_per_year * (percent_propane/100) / mileage : 0)
  end

  def proposed_company_propane_equivalent_gal
    @proposed_company_propane ||= (pays_for_fuel == 'Company' ? quantity * miles_per_year * (percent_propane/100) / mileage : 0)
  end

  def proposed_propane_gal
    @proposed_propane ||= proposed_propane_equivalent_gal / propane_factor
  end

  def proposed_driver_propane_gal
    @proposed_driver_propane ||= proposed_driver_propane_equivalent_gal / propane_factor
  end

  def proposed_company_propane_gal
    @proposed_company_propane ||= proposed_company_propane_equivalent_gal / propane_factor
  end



end
