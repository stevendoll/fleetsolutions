class Opportunity < ActiveRecord::Base
  has_many :fleets
  has_many :equipment
  has_many :stations

  validates_presence_of :name

  def total_vehicles
    @vehicles ||= self.fleets.inject(0) { |sum, a| sum += a.quantity }
  end

  def fleet_value
    @fleet_value ||= self.fleets.inject(0) { |sum, a| sum += a.fleet_value }
  end

  def current_gasoline_consumption
    @gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.gasoline_gal }
  end

  def current_driver_gasoline_consumption
    @driver_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.driver_gasoline_gal }
  end

  def current_company_gasoline_consumption
    @company_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.company_gasoline_gal }
  end

  def proposed_gasoline_consumption
    @proposed_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_gasoline_gal }
  end

  def proposed_driver_gasoline_consumption
    @proposed_driver_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_driver_gasoline_gal }
  end

  def proposed_company_gasoline_consumption
    @proposed_company_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_company_gasoline_gal }
  end

  def proposed_propane_consumption
    @proposed_propane ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_propane_gal }
  end

  def proposed_driver_propane_consumption
    @proposed_driver_propane ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_driver_propane_gal }
  end

  def proposed_company_propane_consumption
    @proposed_company_propane ||= self.fleets.inject(0) { |sum, a| sum += a.proposed_company_propane_gal }
  end

  def proposed_company_turnkey_savings
    @company_savings = (self.current_company_gasoline_consumption - self.proposed_company_gasoline_consumption) * self.gasoline_price - self.proposed_company_propane_consumption * self.propane_turnkey_cost
  end

  def proposed_company_savings
    @company_savings = (self.current_company_gasoline_consumption - self.proposed_company_gasoline_consumption) * self.gasoline_price - self.proposed_company_propane_consumption * self.propane_cost
  end

  def proposed_driver_savings
    @driver_savings = (self.current_driver_gasoline_consumption - self.proposed_driver_gasoline_consumption) * self.gasoline_price - self.proposed_driver_propane_consumption * self.propane_price
  end

  def proposed_royalties
    @royalties = self.proposed_driver_propane_consumption * propane_royalties
  end

  def proposed_turnkey_royalties
    @turnkey_royalties =  self.proposed_driver_propane_consumption * propane_turnkey_royalties
  end

  def conversion_charges
    @conversion ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.conversion_cost } * (1 + self.conversion_margin)
  end

end
