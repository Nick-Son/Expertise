class Booking < ApplicationRecord
  belongs_to :expert, class_name: 'User'
  belongs_to :client, class_name: 'User'
end
