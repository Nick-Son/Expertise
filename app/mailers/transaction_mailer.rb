class TransactionMailer < ApplicationMailer

  def transaction_email(booking)
    @client_email = booking.client.email
    @expert_email = booking.expert.email
    @expert_name = "#{booking.expert.profile.first_name} #{booking.expert.profile.last_name}"
    @booking_date = booking.time
    @booking = booking.id
    @amount = booking.rate_per_hour.to_i * booking.duration.to_i
    mail(to:@client_email, subject: "Booking payment confirmation for #{@client_email}")
  end 

end
