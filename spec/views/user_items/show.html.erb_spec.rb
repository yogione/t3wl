require 'spec_helper'

describe "user_items/show.html.erb" do
  before(:each) do
    @user_item = assign(:user_item, stub_model(UserItem,
      :user_id => 1,
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
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
