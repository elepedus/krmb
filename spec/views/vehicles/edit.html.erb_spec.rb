require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :name => "MyString",
      :registration => "MyString",
      :make => "MyString",
      :model => "MyString",
      :trim => "MyString",
      :year => 1,
      :notes => "MyText",
      :documents => "",
      :mileage => 1,
      :user => nil,
      :images => ""
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input[name=?]", "vehicle[name]"

      assert_select "input[name=?]", "vehicle[registration]"

      assert_select "input[name=?]", "vehicle[make]"

      assert_select "input[name=?]", "vehicle[model]"

      assert_select "input[name=?]", "vehicle[trim]"

      assert_select "input[name=?]", "vehicle[year]"

      assert_select "textarea[name=?]", "vehicle[notes]"

      assert_select "input[name=?]", "vehicle[documents]"

      assert_select "input[name=?]", "vehicle[mileage]"

      assert_select "input[name=?]", "vehicle[user_id]"

      assert_select "input[name=?]", "vehicle[images]"
    end
  end
end
