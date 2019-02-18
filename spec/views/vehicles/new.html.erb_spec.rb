require 'rails_helper'

RSpec.describe "vehicles/new", type: :view do
  before(:each) do
    assign(:vehicle, create(:vehicle))
  end

  it "renders new vehicle form"
end
