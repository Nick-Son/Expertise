class ConversationPolicy < ApplicationPolicy

  def index?
    if user.id == record.user1_id
      true
    elsif user.id == record.user2_id
      true
    else
      false
    end
  end 

end 