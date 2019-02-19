require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, create(:vehicle))
  end

  it "renders attributes in <p>"
end
