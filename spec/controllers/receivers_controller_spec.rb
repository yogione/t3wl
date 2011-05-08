require 'spec_helper'

describe ReceiversController do

  def mock_receiver(stubs={})
    (@mock_receiver ||= mock_model(Receiver).as_null_object).tap do |receiver|
      receiver.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all receivers as @receivers" do
      Receiver.stub(:all) { [mock_receiver] }
      get :index
      assigns(:receivers).should eq([mock_receiver])
    end
  end

  describe "GET show" do
    it "assigns the requested receiver as @receiver" do
      Receiver.stub(:find).with("37") { mock_receiver }
      get :show, :id => "37"
      assigns(:receiver).should be(mock_receiver)
    end
  end

  describe "GET new" do
    it "assigns a new receiver as @receiver" do
      Receiver.stub(:new) { mock_receiver }
      get :new
      assigns(:receiver).should be(mock_receiver)
    end
  end

  describe "GET edit" do
    it "assigns the requested receiver as @receiver" do
      Receiver.stub(:find).with("37") { mock_receiver }
      get :edit, :id => "37"
      assigns(:receiver).should be(mock_receiver)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created receiver as @receiver" do
        Receiver.stub(:new).with({'these' => 'params'}) { mock_receiver(:save => true) }
        post :create, :receiver => {'these' => 'params'}
        assigns(:receiver).should be(mock_receiver)
      end

      it "redirects to the created receiver" do
        Receiver.stub(:new) { mock_receiver(:save => true) }
        post :create, :receiver => {}
        response.should redirect_to(receiver_url(mock_receiver))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved receiver as @receiver" do
        Receiver.stub(:new).with({'these' => 'params'}) { mock_receiver(:save => false) }
        post :create, :receiver => {'these' => 'params'}
        assigns(:receiver).should be(mock_receiver)
      end

      it "re-renders the 'new' template" do
        Receiver.stub(:new) { mock_receiver(:save => false) }
        post :create, :receiver => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested receiver" do
        Receiver.should_receive(:find).with("37") { mock_receiver }
        mock_receiver.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :receiver => {'these' => 'params'}
      end

      it "assigns the requested receiver as @receiver" do
        Receiver.stub(:find) { mock_receiver(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:receiver).should be(mock_receiver)
      end

      it "redirects to the receiver" do
        Receiver.stub(:find) { mock_receiver(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(receiver_url(mock_receiver))
      end
    end

    describe "with invalid params" do
      it "assigns the receiver as @receiver" do
        Receiver.stub(:find) { mock_receiver(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:receiver).should be(mock_receiver)
      end

      it "re-renders the 'edit' template" do
        Receiver.stub(:find) { mock_receiver(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested receiver" do
      Receiver.should_receive(:find).with("37") { mock_receiver }
      mock_receiver.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the receivers list" do
      Receiver.stub(:find) { mock_receiver }
      delete :destroy, :id => "1"
      response.should redirect_to(receivers_url)
    end
  end

end
