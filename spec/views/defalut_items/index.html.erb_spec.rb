require 'spec_helper'

describe "defalut_items/index.html.erb" do
  before(:each) do
    assign(:defalut_items, [
      stub_model(DefalutItem,
        :item_id => 1,
        :qty => 1
      ),
      stub_model(DefalutItem,
        :item_id => 1,
        :qty => 1
      )
    ])
  end

  it "renders a list of defalut_items" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
