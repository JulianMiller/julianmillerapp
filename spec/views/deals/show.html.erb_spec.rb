require 'spec_helper'

describe "deals/show.html.erb" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :name => "Name",
      :intro => "Intro",
      :photo => "Photo",
      :description => "MyText",
      :value => 1.5,
      :discount => 1,
      :location_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Intro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
