require 'spec_helper'

describe "locations/index.html.erb" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :default => false,
        :todays_deal => false
      ),
      stub_model(Location,
        :name => "Name",
        :default => false,
        :todays_deal => false
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
