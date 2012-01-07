require 'spec_helper'

describe "locations/new.html.erb" do
  before(:each) do
    assign(:location, stub_model(Location,
      :name => "MyString",
      :default => false,
      :todays_deal => false
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_default", :name => "location[default]"
      assert_select "input#location_todays_deal", :name => "location[todays_deal]"
    end
  end
end
