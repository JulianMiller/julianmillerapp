require "spec_helper"

describe CouponsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/coupons" }.should route_to(:controller => "coupons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/coupons/new" }.should route_to(:controller => "coupons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/coupons/1" }.should route_to(:controller => "coupons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/coupons/1/edit" }.should route_to(:controller => "coupons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/coupons" }.should route_to(:controller => "coupons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/coupons/1" }.should route_to(:controller => "coupons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/coupons/1" }.should route_to(:controller => "coupons", :action => "destroy", :id => "1")
    end

  end
end
