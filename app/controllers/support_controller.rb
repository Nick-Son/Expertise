class SupportController < ApplicationController
  before_action :authenticate_user!

  def new
    @error_messages = []
  end  

  def create
    # Sets the value of variable, from_email to the email of the logged in user
    from_email = current_user.email
    # takes the value of :title(specified in the form) from the params and stores it in a variable, title
    title = params[:title] 
    # takes the value of :message(specified in the form) from the params and stores it in a variable, message
    message = params[:message] 

    # Collecting errors if any
    @error_messages = []
    @error_messages << 'Please enter your message' if message.blank?

    if @error_messages.empty?
      #Send the message to the support email address
      SupportMailer.contact_support(from_email, title, message).deliver_now 
      # Show success message
      render :success
    else 
      render :new
    end 
  end 

  def faq

  end
  
end
