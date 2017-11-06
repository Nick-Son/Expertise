class SupportController < ApplicationController

  def new
    @error_messages = []
  end  

  def create
    # Sets the value of variable, from_email to the email of the logged in user
    from_email = current_user.email
    # takes the value of :message(specified in the form) from the params and stores it in a variable, message
    message = params[:message] 

    @error_messages = []
    @error_messages << 'Please enter your message' if message.blank?

    if @error_messages.empty?

    else 
      render :new
    end 
  end 
end
