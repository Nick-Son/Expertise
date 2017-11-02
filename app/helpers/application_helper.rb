module ApplicationHelper

  def other_user(conversation)
    if conversation.user1 == current_user
      conversation.user2.email
    else
      conversation.user1.email
    end    
  end 

end
