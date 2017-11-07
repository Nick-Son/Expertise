require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :expert => nil,
        :client => nil,
        :duration => 2,
        :rate_per_hour => 3,
        :location => "Location",
        :charge_identifier => "Charge Identifier"
      ),
      Booking.create!(
        :expert => nil,
        :client => nil,
        :duration => 2,
        :rate_per_hour => 3,
        :location => "Location",
        :charge_identifier => "Charge Identifier"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Charge Identifier".to_s, :count => 2
  end
end
