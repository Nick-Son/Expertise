module ApplicationHelper

  # works out who the other user is in a conversation, when current_user is present.
  def other_user(conversation)
    if conversation.user1 == current_user
      conversation.user2.email
    else
      conversation.user1.email
    end    
  end 

  # Takes the first and last name of a user's profile and combines it to create their full name.
  # def full_name(user)
  #   "#{user.profile.first_name} #{user.profile.last_name}"
  # end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end

end
