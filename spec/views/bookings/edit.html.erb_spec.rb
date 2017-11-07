require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :expert => nil,
      :client => nil,
      :duration => 1,
      :rate_per_hour => 1,
      :location => "MyString",
      :charge_identifier => "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[expert_id]"

      assert_select "input[name=?]", "booking[client_id]"

      assert_select "input[name=?]", "booking[duration]"

      assert_select "input[name=?]", "booking[rate_per_hour]"

      assert_select "input[name=?]", "booking[location]"

      assert_select "input[name=?]", "booking[charge_identifier]"
    end
  end
end
