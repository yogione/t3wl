require "spec_helper"

describe UserItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/user_items" }.should route_to(:controller => "user_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/user_items/new" }.should route_to(:controller => "user_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/user_items/1" }.should route_to(:controller => "user_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/user_items/1/edit" }.should route_to(:controller => "user_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/user_items" }.should route_to(:controller => "user_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/user_items/1" }.should route_to(:controller => "user_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/user_items/1" }.should route_to(:controller => "user_items", :action => "destroy", :id => "1")
    end

  end
end
