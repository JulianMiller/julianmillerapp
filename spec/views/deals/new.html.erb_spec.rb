require 'spec_helper'

describe "deals/new.html.erb" do
  before(:each) do
    assign(:deal, stub_model(Deal,
      :name => "MyString",
      :intro => "MyString",
      :photo => "MyString",
      :description => "MyText",
      :value => 1.5,
      :discount => 1,
      :location_id => 1
    ).as_new_record)
  end

  it "renders new deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deals_path, :method => "post" do
      assert_select "input#deal_name", :name => "deal[name]"
      assert_select "input#deal_intro", :name => "deal[intro]"
      assert_select "input#deal_photo", :name => "deal[photo]"
      assert_select "textarea#deal_description", :name => "deal[description]"
      assert_select "input#deal_value", :name => "deal[value]"
      assert_select "input#deal_discount", :name => "deal[discount]"
      assert_select "input#deal_location_id", :name => "deal[location_id]"
    end
  end
end
