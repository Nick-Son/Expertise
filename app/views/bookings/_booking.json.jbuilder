json.extract! booking, :id, :expert_id, :client_id, :time, :duration, :rate_per_hour, :location, :charge_identifier, :created_at, :updated_at
json.url booking_url(booking, format: :json)
