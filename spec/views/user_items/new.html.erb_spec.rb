require 'spec_helper'

describe "user_items/new.html.erb" do
  before(:each) do
    assign(:user_item, stub_model(UserItem,
      :user_id => 1,
      :item_id => 1,
      :qty => 1
    ).as_new_record)
  end

  it "renders new user_item form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => user_items_path, :method => "post" do
      assert_select "input#user_item_user_id", :name => "user_item[user_id]"
      assert_select "input#user_item_item_id", :name => "user_item[item_id]"
      assert_select "input#user_item_qty", :name => "user_item[qty]"
    end
  end
end
