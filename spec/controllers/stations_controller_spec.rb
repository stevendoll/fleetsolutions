require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe StationsController do

  # This should return the minimal set of attributes required to create a valid
  # Station. As you add validations to Station, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all stations as @stations" do
      station = Station.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stations).should eq([station])
    end
  end

  describe "GET show" do
    it "assigns the requested station as @station" do
      station = Station.create! valid_attributes
      get :show, {:id => station.to_param}, valid_session
      assigns(:station).should eq(station)
    end
  end

  describe "GET new" do
    it "assigns a new station as @station" do
      get :new, {}, valid_session
      assigns(:station).should be_a_new(Station)
    end
  end

  describe "GET edit" do
    it "assigns the requested station as @station" do
      station = Station.create! valid_attributes
      get :edit, {:id => station.to_param}, valid_session
      assigns(:station).should eq(station)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Station" do
        expect {
          post :create, {:station => valid_attributes}, valid_session
        }.to change(Station, :count).by(1)
      end

      it "assigns a newly created station as @station" do
        post :create, {:station => valid_attributes}, valid_session
        assigns(:station).should be_a(Station)
        assigns(:station).should be_persisted
      end

      it "redirects to the created station" do
        post :create, {:station => valid_attributes}, valid_session
        response.should redirect_to(Station.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved station as @station" do
        # Trigger the behavior that occurs when invalid params are submitted
        Station.any_instance.stub(:save).and_return(false)
        post :create, {:station => { "name" => "invalid value" }}, valid_session
        assigns(:station).should be_a_new(Station)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Station.any_instance.stub(:save).and_return(false)
        post :create, {:station => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested station" do
        station = Station.create! valid_attributes
        # Assuming there are no other stations in the database, this
        # specifies that the Station created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Station.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => station.to_param, :station => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested station as @station" do
        station = Station.create! valid_attributes
        put :update, {:id => station.to_param, :station => valid_attributes}, valid_session
        assigns(:station).should eq(station)
      end

      it "redirects to the station" do
        station = Station.create! valid_attributes
        put :update, {:id => station.to_param, :station => valid_attributes}, valid_session
        response.should redirect_to(station)
      end
    end

    describe "with invalid params" do
      it "assigns the station as @station" do
        station = Station.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Station.any_instance.stub(:save).and_return(false)
        put :update, {:id => station.to_param, :station => { "name" => "invalid value" }}, valid_session
        assigns(:station).should eq(station)
      end

      it "re-renders the 'edit' template" do
        station = Station.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Station.any_instance.stub(:save).and_return(false)
        put :update, {:id => station.to_param, :station => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested station" do
      station = Station.create! valid_attributes
      expect {
        delete :destroy, {:id => station.to_param}, valid_session
      }.to change(Station, :count).by(-1)
    end

    it "redirects to the stations list" do
      station = Station.create! valid_attributes
      delete :destroy, {:id => station.to_param}, valid_session
      response.should redirect_to(stations_url)
    end
  end

end
