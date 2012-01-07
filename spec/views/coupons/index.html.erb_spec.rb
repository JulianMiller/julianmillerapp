require 'spec_helper'

describe "coupons/index.html.erb" do
  before(:each) do
    assign(:coupons, [
      stub_model(Coupon,
        :order_id => 1,
        :deal_id => 1,
        :token => "Token",
        :quantity => 1,
        :total => 1.5
      ),
      stub_model(Coupon,
        :order_id => 1,
        :deal_id => 1,
        :token => "Token",
        :quantity => 1,
        :total => 1.5
      )
    ])
  end

  it "renders a list of coupons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
