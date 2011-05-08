require 'spec_helper'

describe DefalutItemsController do

  def mock_defalut_item(stubs={})
    (@mock_defalut_item ||= mock_model(DefalutItem).as_null_object).tap do |defalut_item|
      defalut_item.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all defalut_items as @defalut_items" do
      DefalutItem.stub(:all) { [mock_defalut_item] }
      get :index
      assigns(:defalut_items).should eq([mock_defalut_item])
    end
  end

  describe "GET show" do
    it "assigns the requested defalut_item as @defalut_item" do
      DefalutItem.stub(:find).with("37") { mock_defalut_item }
      get :show, :id => "37"
      assigns(:defalut_item).should be(mock_defalut_item)
    end
  end

  describe "GET new" do
    it "assigns a new defalut_item as @defalut_item" do
      DefalutItem.stub(:new) { mock_defalut_item }
      get :new
      assigns(:defalut_item).should be(mock_defalut_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested defalut_item as @defalut_item" do
      DefalutItem.stub(:find).with("37") { mock_defalut_item }
      get :edit, :id => "37"
      assigns(:defalut_item).should be(mock_defalut_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created defalut_item as @defalut_item" do
        DefalutItem.stub(:new).with({'these' => 'params'}) { mock_defalut_item(:save => true) }
        post :create, :defalut_item => {'these' => 'params'}
        assigns(:defalut_item).should be(mock_defalut_item)
      end

      it "redirects to the created defalut_item" do
        DefalutItem.stub(:new) { mock_defalut_item(:save => true) }
        post :create, :defalut_item => {}
        response.should redirect_to(defalut_item_url(mock_defalut_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved defalut_item as @defalut_item" do
        DefalutItem.stub(:new).with({'these' => 'params'}) { mock_defalut_item(:save => false) }
        post :create, :defalut_item => {'these' => 'params'}
        assigns(:defalut_item).should be(mock_defalut_item)
      end

      it "re-renders the 'new' template" do
        DefalutItem.stub(:new) { mock_defalut_item(:save => false) }
        post :create, :defalut_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested defalut_item" do
        DefalutItem.should_receive(:find).with("37") { mock_defalut_item }
        mock_defalut_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :defalut_item => {'these' => 'params'}
      end

      it "assigns the requested defalut_item as @defalut_item" do
        DefalutItem.stub(:find) { mock_defalut_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:defalut_item).should be(mock_defalut_item)
      end

      it "redirects to the defalut_item" do
        DefalutItem.stub(:find) { mock_defalut_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(defalut_item_url(mock_defalut_item))
      end
    end

    describe "with invalid params" do
      it "assigns the defalut_item as @defalut_item" do
        DefalutItem.stub(:find) { mock_defalut_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:defalut_item).should be(mock_defalut_item)
      end

      it "re-renders the 'edit' template" do
        DefalutItem.stub(:find) { mock_defalut_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested defalut_item" do
      DefalutItem.should_receive(:find).with("37") { mock_defalut_item }
      mock_defalut_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the defalut_items list" do
      DefalutItem.stub(:find) { mock_defalut_item }
      delete :destroy, :id => "1"
      response.should redirect_to(defalut_items_url)
    end
  end

end
