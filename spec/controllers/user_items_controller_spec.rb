require 'spec_helper'

describe UserItemsController do

  def mock_user_item(stubs={})
    (@mock_user_item ||= mock_model(UserItem).as_null_object).tap do |user_item|
      user_item.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all user_items as @user_items" do
      UserItem.stub(:all) { [mock_user_item] }
      get :index
      assigns(:user_items).should eq([mock_user_item])
    end
  end

  describe "GET show" do
    it "assigns the requested user_item as @user_item" do
      UserItem.stub(:find).with("37") { mock_user_item }
      get :show, :id => "37"
      assigns(:user_item).should be(mock_user_item)
    end
  end

  describe "GET new" do
    it "assigns a new user_item as @user_item" do
      UserItem.stub(:new) { mock_user_item }
      get :new
      assigns(:user_item).should be(mock_user_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_item as @user_item" do
      UserItem.stub(:find).with("37") { mock_user_item }
      get :edit, :id => "37"
      assigns(:user_item).should be(mock_user_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created user_item as @user_item" do
        UserItem.stub(:new).with({'these' => 'params'}) { mock_user_item(:save => true) }
        post :create, :user_item => {'these' => 'params'}
        assigns(:user_item).should be(mock_user_item)
      end

      it "redirects to the created user_item" do
        UserItem.stub(:new) { mock_user_item(:save => true) }
        post :create, :user_item => {}
        response.should redirect_to(user_item_url(mock_user_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_item as @user_item" do
        UserItem.stub(:new).with({'these' => 'params'}) { mock_user_item(:save => false) }
        post :create, :user_item => {'these' => 'params'}
        assigns(:user_item).should be(mock_user_item)
      end

      it "re-renders the 'new' template" do
        UserItem.stub(:new) { mock_user_item(:save => false) }
        post :create, :user_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested user_item" do
        UserItem.should_receive(:find).with("37") { mock_user_item }
        mock_user_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :user_item => {'these' => 'params'}
      end

      it "assigns the requested user_item as @user_item" do
        UserItem.stub(:find) { mock_user_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:user_item).should be(mock_user_item)
      end

      it "redirects to the user_item" do
        UserItem.stub(:find) { mock_user_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(user_item_url(mock_user_item))
      end
    end

    describe "with invalid params" do
      it "assigns the user_item as @user_item" do
        UserItem.stub(:find) { mock_user_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:user_item).should be(mock_user_item)
      end

      it "re-renders the 'edit' template" do
        UserItem.stub(:find) { mock_user_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested user_item" do
      UserItem.should_receive(:find).with("37") { mock_user_item }
      mock_user_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the user_items list" do
      UserItem.stub(:find) { mock_user_item }
      delete :destroy, :id => "1"
      response.should redirect_to(user_items_url)
    end
  end

end
