require "spec_helper"

describe ReceiversController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/receivers" }.should route_to(:controller => "receivers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/receivers/new" }.should route_to(:controller => "receivers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/receivers/1" }.should route_to(:controller => "receivers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/receivers/1/edit" }.should route_to(:controller => "receivers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/receivers" }.should route_to(:controller => "receivers", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/receivers/1" }.should route_to(:controller => "receivers", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/receivers/1" }.should route_to(:controller => "receivers", :action => "destroy", :id => "1")
    end

  end
end
