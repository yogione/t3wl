require 'spec_helper'

describe "defalut_items/show.html.erb" do
  before(:each) do
    @defalut_item = assign(:defalut_item, stub_model(DefalutItem,
      :item_id => 1,
      :qty => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end