require 'spec_helper'

describe "messages/index.html.erb" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :msg_text => "Msg Text",
        :category => "Category"
      ),
      stub_model(Message,
        :msg_text => "Msg Text",
        :category => "Category"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Msg Text".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
