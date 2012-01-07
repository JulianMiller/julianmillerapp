require "spec_helper"

describe DealsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/deals" }.should route_to(:controller => "deals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/deals/new" }.should route_to(:controller => "deals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/deals/1" }.should route_to(:controller => "deals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/deals/1/edit" }.should route_to(:controller => "deals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/deals" }.should route_to(:controller => "deals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/deals/1" }.should route_to(:controller => "deals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/deals/1" }.should route_to(:controller => "deals", :action => "destroy", :id => "1")
    end

  end
end
