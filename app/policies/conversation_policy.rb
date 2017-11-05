class ConversationPolicy < ApplicationPolicy

  def index
    if @conversations.user1_id == current_user_id
      true
    elsif @conversations.user2_id == current_user_id
      true
    else
      false
    end
  end 

end 