require "spec_helper"

describe DefalutItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/defalut_items" }.should route_to(:controller => "defalut_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/defalut_items/new" }.should route_to(:controller => "defalut_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/defalut_items/1" }.should route_to(:controller => "defalut_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/defalut_items/1/edit" }.should route_to(:controller => "defalut_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/defalut_items" }.should route_to(:controller => "defalut_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/defalut_items/1" }.should route_to(:controller => "defalut_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/defalut_items/1" }.should route_to(:controller => "defalut_items", :action => "destroy", :id => "1")
    end

  end
end
