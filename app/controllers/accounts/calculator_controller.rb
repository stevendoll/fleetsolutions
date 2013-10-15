class Accounts::CalculatorController < ApplicationController
  include Wicked::Wizard

  steps :add_fleets, :add_equipment, :select_opportunity, :get_started

  def show
    @account = Account.find(params[:account_id])
    render_wizard
  end


  def update
    @account = Account.find(params[:account_id])
    @account.update_attributes(params[:account])

    @fleet = @account.fleets.create(fleet_params)

    unless @fleet.vehicle_type.blank?
      @fleet.name = @fleet.vehicle_type.name
      @fleet.miles = @fleet.vehicle_type.miles
      @fleet.lifetime_miles = @fleet.vehicle_type.lifetime_miles
      @fleet.mileage = @fleet.vehicle_type.mileage
      @fleet.resale_value = @fleet.vehicle_type.resale_value
      @fleet.conversion_cost = @fleet.vehicle_type.conversion_cost
      @fleet.propane_factor = @fleet.vehicle_type.propane_factor
      @fleet.maintenance_per_mile = 0.0447
      @fleet.save
    end


    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { render_wizard @account, notice: 'Vehicle group was added.' }
        format.json { render action: 'show', status: :created, location: @fleet }
      else
        format.html { render :action => 'new', alert: 'Status: all fields are required.' }
        format.json { render json: @fleet.errors, status: :unprocessable_entity }
      end
    end

    #render_wizard @account
  end


  def create
    @account = Account.create
    redirect_to wizard_path(steps.first, :account_id => @account.id)
  end
end