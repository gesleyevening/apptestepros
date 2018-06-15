require "rails_helper"

RSpec.describe PropostesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/propostes").to route_to("propostes#index")
    end

    it "routes to #new" do
      expect(:get => "/propostes/new").to route_to("propostes#new")
    end

    it "routes to #show" do
      expect(:get => "/propostes/1").to route_to("propostes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/propostes/1/edit").to route_to("propostes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/propostes").to route_to("propostes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/propostes/1").to route_to("propostes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/propostes/1").to route_to("propostes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/propostes/1").to route_to("propostes#destroy", :id => "1")
    end

  end
end
