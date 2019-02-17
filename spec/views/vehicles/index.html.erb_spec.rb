require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        :name => "Name",
        :registration => "Registration",
        :make => "Make",
        :model => "Model",
        :trim => "Trim",
        :year => 2,
        :notes => "MyText",
        :documents => "",
        :mileage => 3,
        :user => nil,
        :images => ""
      ),
      Vehicle.create!(
        :name => "Name",
        :registration => "Registration",
        :make => "Make",
        :model => "Model",
        :trim => "Trim",
        :year => 2,
        :notes => "MyText",
        :documents => "",
        :mileage => 3,
        :user => nil,
        :images => ""
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Trim".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
