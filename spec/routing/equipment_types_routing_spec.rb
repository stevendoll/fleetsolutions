require "spec_helper"

describe EquipmentTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/equipment_types").should route_to("equipment_types#index")
    end

    it "routes to #new" do
      get("/equipment_types/new").should route_to("equipment_types#new")
    end

    it "routes to #show" do
      get("/equipment_types/1").should route_to("equipment_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/equipment_types/1/edit").should route_to("equipment_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/equipment_types").should route_to("equipment_types#create")
    end

    it "routes to #update" do
      put("/equipment_types/1").should route_to("equipment_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/equipment_types/1").should route_to("equipment_types#destroy", :id => "1")
    end

  end
end
