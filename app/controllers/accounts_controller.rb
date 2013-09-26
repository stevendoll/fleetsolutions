class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
    @account.name = 'My Company'

  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = Account.new(account_params)

    @account.propane_royalties = 0.3
    @account.propane_turnkey_royalties = 0.1
    @account.propane_price = 2.75
    @account.propane_cost = 2.45
    @account.propane_turnkey_cost = 2.65
    @account.conversion_margin = 0.5
    @account.gasoline_price = 3.65
    @account.annual_management_charge = 6000.0

    #UserMailer.calculator_email.deliver


    respond_to do |format|
      if @account.save
        format.html { redirect_to @account }
        format.json { render action: 'show', status: :created, location: @account }
      else
        format.html { render action: 'new' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name, :address_1, :address_2, :city, :state, :zip, :propane_royalties, :propane_turnkey_royalties, :propane_price, :propane_cost, :propane_turnkey_cost, :gasoline_cost, :annual_management_charge, :conversion_margin)
    end
end
