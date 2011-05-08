require 'spec_helper'

describe "stores/index.html.erb" do
  before(:each) do
    assign(:stores, [
      stub_model(Store,
        :location => "Location",
        :zip => 1,
        :item_id => 1,
        :price => 1.5
      ),
      stub_model(Store,
        :location => "Location",
        :zip => 1,
        :item_id => 1,
        :price => 1.5
      )
    ])
  end

  it "renders a list of stores" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
