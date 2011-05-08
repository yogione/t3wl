require 'spec_helper'

describe "receivers/new.html.erb" do
  before(:each) do
    assign(:receiver, stub_model(Receiver,
      :name => "MyString",
      :phone_number => 1,
      :description => "MyString",
      :email => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new receiver form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => receivers_path, :method => "post" do
      assert_select "input#receiver_name", :name => "receiver[name]"
      assert_select "input#receiver_phone_number", :name => "receiver[phone_number]"
      assert_select "input#receiver_description", :name => "receiver[description]"
      assert_select "input#receiver_email", :name => "receiver[email]"
      assert_select "input#receiver_status", :name => "receiver[status]"
    end
  end
end
