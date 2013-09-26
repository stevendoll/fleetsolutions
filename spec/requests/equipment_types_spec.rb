require 'spec_helper'

describe "EquipmentTypes" do
  describe "GET /equipment_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get equipment_types_path
      response.status.should be(200)
    end
  end
end
