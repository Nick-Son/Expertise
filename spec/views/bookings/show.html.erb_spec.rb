require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :expert => nil,
      :client => nil,
      :duration => 2,
      :rate_per_hour => 3,
      :location => "Location",
      :charge_identifier => "Charge Identifier"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Charge Identifier/)
  end
end
