require "spec_helper"

describe FleetsController do
  describe "routing" do

    it "routes to #index" do
      get("/fleets").should route_to("fleets#index")
    end

    it "routes to #new" do
      get("/fleets/new").should route_to("fleets#new")
    end

    it "routes to #show" do
      get("/fleets/1").should route_to("fleets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fleets/1/edit").should route_to("fleets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fleets").should route_to("fleets#create")
    end

    it "routes to #update" do
      put("/fleets/1").should route_to("fleets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fleets/1").should route_to("fleets#destroy", :id => "1")
    end

  end
end
