class SupportMailer < ApplicationMailer

  def contact_support(from_email, title, message)
    @from_email = from_email
    @title = title
    @message = message
    support_email = ENV.fetch('SUPPORT_EMAIL')
    mail(to:support_email, subject: "Support request from #{@from_email}")
  end 
end
