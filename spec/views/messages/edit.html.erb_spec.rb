require 'spec_helper'

describe "messages/edit.html.erb" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :new_record? => false,
      :msg_text => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => message_path(@message), :method => "post" do
      assert_select "input#message_msg_text", :name => "message[msg_text]"
      assert_select "input#message_category", :name => "message[category]"
    end
  end
end
