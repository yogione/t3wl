require 'spec_helper'

describe "defalut_items/new.html.erb" do
  before(:each) do
    assign(:defalut_item, stub_model(DefalutItem,
      :item_id => 1,
      :qty => 1
    ).as_new_record)
  end

  it "renders new defalut_item form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => defalut_items_path, :method => "post" do
      assert_select "input#defalut_item_item_id", :name => "defalut_item[item_id]"
      assert_select "input#defalut_item_qty", :name => "defalut_item[qty]"
    end
  end
end
