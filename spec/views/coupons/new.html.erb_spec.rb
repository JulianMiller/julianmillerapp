require 'spec_helper'

describe "coupons/new.html.erb" do
  before(:each) do
    assign(:coupon, stub_model(Coupon,
      :order_id => 1,
      :deal_id => 1,
      :token => "MyString",
      :quantity => 1,
      :total => 1.5
    ).as_new_record)
  end

  it "renders new coupon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coupons_path, :method => "post" do
      assert_select "input#coupon_order_id", :name => "coupon[order_id]"
      assert_select "input#coupon_deal_id", :name => "coupon[deal_id]"
      assert_select "input#coupon_token", :name => "coupon[token]"
      assert_select "input#coupon_quantity", :name => "coupon[quantity]"
      assert_select "input#coupon_total", :name => "coupon[total]"
    end
  end
end
