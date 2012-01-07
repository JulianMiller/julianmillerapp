require 'spec_helper'

describe "deals/index.html.erb" do
  before(:each) do
    assign(:deals, [
      stub_model(Deal,
        :name => "Name",
        :intro => "Intro",
        :photo => "Photo",
        :description => "MyText",
        :value => 1.5,
        :discount => 1,
        :location_id => 1
      ),
      stub_model(Deal,
        :name => "Name",
        :intro => "Intro",
        :photo => "Photo",
        :description => "MyText",
        :value => 1.5,
        :discount => 1,
        :location_id => 1
      )
    ])
  end

  it "renders a list of deals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Intro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
