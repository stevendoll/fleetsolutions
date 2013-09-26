class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]


  # GET /equipment
  # GET /equipment.json
  def index
    account = Account.find(params[:account_id])
    @equipment = account.equipment
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
  end

  # GET /equipment/new
  def new
    account = Account.find(params[:account_id])
    @equipment = account.equipment.build
    @equipment.percent_propane = 100.0
  end

  # GET /equipment/1/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    account = Account.find(params[:account_id])
    #2nd you retrieve the comment thanks to params[:id]
    @equipment = account.equipment.find(params[:id])

  end

  # POST /equipment
  # POST /equipment.json
  def create
    @account = Account.find(params[:account_id])
    @equipment = @account.equipment.create(equipment_params)

    unless @equipment.equipment_type.blank?
      @equipment.name = @equipment.equipment_type.name
      @equipment.fuel_per_hour = @equipment.equipment_type.fuel_per_hour
      @equipment.conversion_cost = @equipment.equipment_type.conversion_cost
      @equipment.propane_factor = @equipment.equipment_type.propane_factor
      @equipment.save
    end


    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to account_path(@account), notice: 'Vehicle group was added.' }
        format.json { render action: 'show', status: :created, location: @equipment }
      else
        format.html { render :action => 'new', alert: 'Status: all fields are required.' }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
    @account = Account.find(params[:account_id])

    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to account_path(@account), notice: 'Equipment was updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @account = Account.find(params[:account_id])
    @equipment = @account.equipment.find(params[:id])
    @equipment.destroy
    redirect_to account_path(@account), notice: 'Vehicle group was deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_params
      params.require(:equipment).permit(:name, :quantity, :equipment_type_id, :fuel_per_hour, :hours_per_year, :conversion_cost, :percent_propane, :account_id)
    end
end
