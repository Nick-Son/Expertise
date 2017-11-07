class Booking < ApplicationRecord
  belongs_to :expert
  belongs_to :client
end
