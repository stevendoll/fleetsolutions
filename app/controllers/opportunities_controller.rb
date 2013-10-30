class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: [:show, :edit, :update, :destroy]

  # GET /opportunities
  # GET /opportunities.json
  def index
    @opportunities = Opportunity.all
  end

  # GET /opportunities/1
  # GET /opportunities/1.json
  def show
  end

  # GET /opportunities/new
  def new
    @opportunity = Opportunity.new
    @opportunity.name = 'My Company'
    @opportunity.opportunity_type = 'Taxi'
    @opportunity.pays_for_fuel = 'Company'
    @opportunity.fueling_location = 'On-site'
  end

  # GET /opportunities/1/edit
  def edit
  end

  # POST /opportunities
  # POST /opportunities.json
  def create
    @opportunity = Opportunity.new(opportunity_params)

    @opportunity.propane_royalties = 0.3
    @opportunity.propane_turnkey_royalties = 0.1
    @opportunity.propane_price = 2.75
    @opportunity.propane_cost = 2.45
    @opportunity.propane_turnkey_cost = 2.65
    @opportunity.conversion_margin = 0.5
    @opportunity.gasoline_price = 3.65
    @opportunity.annual_management_charge = 6000.0

    respond_to do |format|
      if @opportunity.save
        format.html { redirect_to @opportunity, notice: 'Opportunity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @opportunity }
      else
        format.html { render action: 'new' }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opportunities/1
  # PATCH/PUT /opportunities/1.json
  def update
    respond_to do |format|
      if @opportunity.update(opportunity_params)
        format.html { redirect_to @opportunity, notice: 'Opportunity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opportunities/1
  # DELETE /opportunities/1.json
  def destroy
    @opportunity.destroy
    respond_to do |format|
      format.html { redirect_to opportunities_url }
      format.json { head :no_content }
    end
  end

  def invite
    @opportunity = Opportunity.find(params[:id])
    #format.html { render action: 'new', notice: 'We sent you an email with information to get started.' }
    # authorize! :invite, @user, :message => 'Not authorized as an administrator.'
    # @user = User.find(params[:id])
    # @user.send_confirmation_instructions
    # redirect_to :back, :only_path => true, :notice => "Sent invitation to #{@user.email}."
  end

  def thankyou
    @opportunity = Opportunity.find(params[:id])
    #format.html { render action: 'new', notice: 'We sent you an email with information to get started.' }
    # authorize! :invite, @user, :message => 'Not authorized as an administrator.'
    # @user = User.find(params[:id])
    # @user.send_confirmation_instructions
    # redirect_to :back, :only_path => true, :notice => "Sent invitation to #{@user.email}."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opportunity_params
      params.require(:opportunity).permit(:name, :description, :opportunity_type, :phone, :email, :address_1, :address_2, :city, :state, :zip, :pays_for_fuel, :fueling_location, :propane_royalties, :propane_turnkey_royalties, :propane_price, :propane_cost, :propane_turnkey_cost, :gasoline_price, :annual_management_charge, :conversion_margin)
    end
end
