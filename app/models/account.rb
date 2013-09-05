class Account < ActiveRecord::Base
  has_many :users
  has_many :fleets
  has_many :stations


  def total_vehicles
    @vehicles ||= self.fleets.inject(0) { |sum, a| sum += a.quantity }
  end

  def current_gasoline_consumption
    @gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year / a.mileage }
  end

  def proposed_gasoline_consumption
    @proposed_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * (1- a.percent_propane/100) / a.mileage }
  end

  def proposed_propane_consumption
    @propane ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * a.percent_propane/100 / a.mileage / a.vehicle_type.propane_factor }
  end

  def proposed_savings
    @gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year / a.mileage }
    @proposed_gasoline ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * (1- a.percent_propane/100) / a.mileage }
    @propane ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * a.percent_propane/100 / a.mileage / a.vehicle_type.propane_factor }
    @savings ||= (@gasoline - @proposed_gasoline) * 3.65 - @propane * 2.25
  end

  def proposed_royalties
    @royalties ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * a.percent_propane/100 / a.mileage / a.vehicle_type.propane_factor } * self.fuel_royalties
  end

  def proposed_turnkey_royalties
    @proposed_turnkey_royalties ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.miles_per_year * a.percent_propane/100 / a.mileage / a.vehicle_type.propane_factor } * self.turnkey_royalties
  end

  def conversion_charges
    @conversion ||= self.fleets.inject(0) { |sum, a| sum += a.quantity * a.conversion_cost } * (1 + self.conversion_margin)
  end

end
