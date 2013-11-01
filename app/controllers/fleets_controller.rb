class FleetsController < ApplicationController
  before_action :set_fleet, only: [:show, :edit, :update, :destroy]


  # GET /fleets
  # GET /fleets.json
  def index
    opportunity = Opportunity.find(params[:opportunity_id])
    @fleets = opportunity.fleets
  end

  # GET /fleets/1
  # GET /fleets/1.json
  def show
  end

  # GET /fleets/new
  def new
    opportunity = Opportunity.find(params[:opportunity_id])
    @fleet = opportunity.fleets.build
    @fleet.pays_for_fuel = 'Company'
    @fleet.pays_for_maintenance = 'Company'
    @fleet.percent_propane = 100.0
  end

  # GET /fleets/1/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    opportunity = Opportunity.find(params[:opportunity_id])
    #2nd you retrieve the comment thanks to params[:id]
    @fleet = opportunity.fleets.find(params[:id])

  end

  # POST /fleets
  # POST /fleets.json
  def create
    @opportunity = Opportunity.find(params[:opportunity_id])
    @fleet = @opportunity.fleets.create(fleet_params)

    unless @fleet.vehicle_type.blank?
      @fleet.name = @fleet.vehicle_type.name
      @fleet.miles = @fleet.vehicle_type.miles
      @fleet.lifetime_miles = @fleet.vehicle_type.lifetime_miles
      @fleet.mileage = @fleet.vehicle_type.mileage
      @fleet.resale_value = @fleet.vehicle_type.resale_value
      @fleet.conversion_cost = @fleet.vehicle_type.conversion_cost
      @fleet.propane_factor = @fleet.vehicle_type.propane_factor
      @fleet.maintenance_per_mile = 0.0447
    end

    unless @opportunity.pays_for_fuel == 'Both'
      @fleet.pays_for_fuel = @opportunity.pays_for_fuel
     end

    @fleet.percent_propane = 100.0
    @fleet.pays_for_maintenance = 'Company'

    @fleet.save
 


    respond_to do |format|
      if @opportunity.update_attributes(params[:opportunity])
        format.html { redirect_to opportunity_path(@opportunity), notice: 'The vehicles have been added to the analysis.' }
        format.json { render action: 'show', status: :created, location: @fleet }
      else
        format.html { render :action => 'new', alert: 'Status: all fields are required.' }
        format.json { render json: @fleet.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /fleets/1
  # PATCH/PUT /fleets/1.json
  def update
    @opportunity = Opportunity.find(params[:opportunity_id])

    respond_to do |format|
      if @fleet.update(fleet_params)
        format.html { redirect_to opportunity_path(@opportunity), notice: 'Fleet was updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fleet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleets/1
  # DELETE /fleets/1.json
  def destroy
    @opportunity = Opportunity.find(params[:opportunity_id])
    @fleet = @opportunity.fleets.find(params[:id])
    @fleet.destroy
    redirect_to opportunity_path(@opportunity), notice: 'Vehicle group was deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fleet
      @fleet = Fleet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fleet_params
      params.require(:fleet).permit(:name, :quantity, :vehicle_type_id, :miles, :lifetime_miles, :mileage, :miles_per_year, :maintenance_per_mile, :pays_for_fuel, :pays_for_maintenance, :percent_propane, :account_id)
    end
end
