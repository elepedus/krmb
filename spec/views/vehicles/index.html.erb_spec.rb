require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  let(:vehicles) {create_list(:vehicle, 2)}
  before(:each) do
    assign(:vehicles, vehicles)
  end

  it "renders a list of vehicles"
end
