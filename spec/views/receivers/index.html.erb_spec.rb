require 'spec_helper'

describe "receivers/index.html.erb" do
  before(:each) do
    assign(:receivers, [
      stub_model(Receiver,
        :name => "Name",
        :phone_number => 1,
        :description => "Description",
        :email => "Email",
        :status => "Status"
      ),
      stub_model(Receiver,
        :name => "Name",
        :phone_number => 1,
        :description => "Description",
        :email => "Email",
        :status => "Status"
      )
    ])
  end

  it "renders a list of receivers" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
