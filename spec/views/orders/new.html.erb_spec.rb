require 'spec_helper'

describe "orders/new.html.erb" do
  before(:each) do
    assign(:order, stub_model(Order,
      :first_name => "MyString",
      :last_name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :card_number => "MyString",
      :security_code => 1,
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :phone => "MyString",
      :exp_month => 1,
      :exp_year => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_first_name", :name => "order[first_name]"
      assert_select "input#order_last_name", :name => "order[last_name]"
      assert_select "input#order_address_1", :name => "order[address_1]"
      assert_select "input#order_address_2", :name => "order[address_2]"
      assert_select "input#order_card_number", :name => "order[card_number]"
      assert_select "input#order_security_code", :name => "order[security_code]"
      assert_select "input#order_city", :name => "order[city]"
      assert_select "input#order_state", :name => "order[state]"
      assert_select "input#order_zip_code", :name => "order[zip_code]"
      assert_select "input#order_phone", :name => "order[phone]"
      assert_select "input#order_exp_month", :name => "order[exp_month]"
      assert_select "input#order_exp_year", :name => "order[exp_year]"
    end
  end
end
