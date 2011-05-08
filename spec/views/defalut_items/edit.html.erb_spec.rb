require 'spec_helper'

describe "defalut_items/edit.html.erb" do
  before(:each) do
    @defalut_item = assign(:defalut_item, stub_model(DefalutItem,
      :new_record? => false,
      :item_id => 1,
      :qty => 1
    ))
  end

  it "renders the edit defalut_item form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => defalut_item_path(@defalut_item), :method => "post" do
      assert_select "input#defalut_item_item_id", :name => "defalut_item[item_id]"
      assert_select "input#defalut_item_qty", :name => "defalut_item[qty]"
    end
  end
end
