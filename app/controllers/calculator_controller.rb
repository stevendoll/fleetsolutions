class CalculatorController < ApplicationController
  include Wicked::Wizard

  steps :add_fleets, :add_equipment, :select_opportunity, :get_started

  def show
    @account = Account.new
    @account.name = 'My Company'
    render_wizard
    #redirect_to wizard_path(steps.first, :account_id => @account.id)
  end


  def update
    @account = Account.find(params[:account_id])
    @account.update_attributes(params[:account])
    #render_wizard @account
    redirect_to wizard_path(steps.first, :account_id => @account.id)
  end


  def create
    @account = Account.new
    @account.name = 'My Company'
    redirect_to wizard_path(steps.first, :account_id => @account.id)
  end
      



end
