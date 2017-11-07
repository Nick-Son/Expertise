require 'rails_helper'

RSpec.describe "Bookings", type: :request do
  describe "GET /bookings" do
    it "works! (now write some real specs)" do
      get bookings_path
      expect(response).to have_http_status(200)
    end
  end
end
