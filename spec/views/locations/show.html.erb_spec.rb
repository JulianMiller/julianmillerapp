require 'spec_helper'

describe "locations/show.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :default => false,
      :todays_deal => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
