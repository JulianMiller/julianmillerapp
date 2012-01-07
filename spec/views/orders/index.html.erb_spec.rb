require 'spec_helper'

describe "orders/index.html.erb" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :card_number => "Card Number",
        :security_code => 1,
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :exp_month => 1,
        :exp_year => 1
      ),
      stub_model(Order,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :card_number => "Card Number",
        :security_code => 1,
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone => "Phone",
        :exp_month => 1,
        :exp_year => 1
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Card Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
