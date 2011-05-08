require 'spec_helper'

describe "stores/edit.html.erb" do
  before(:each) do
    @store = assign(:store, stub_model(Store,
      :new_record? => false,
      :location => "MyString",
      :zip => 1,
      :item_id => 1,
      :price => 1.5
    ))
  end

  it "renders the edit store form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => store_path(@store), :method => "post" do
      assert_select "input#store_location", :name => "store[location]"
      assert_select "input#store_zip", :name => "store[zip]"
      assert_select "input#store_item_id", :name => "store[item_id]"
      assert_select "input#store_price", :name => "store[price]"
    end
  end
end
