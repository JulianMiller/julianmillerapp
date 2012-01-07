require 'spec_helper'

describe "coupons/show.html.erb" do
  before(:each) do
    @coupon = assign(:coupon, stub_model(Coupon,
      :order_id => 1,
      :deal_id => 1,
      :token => "Token",
      :quantity => 1,
      :total => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Token/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
