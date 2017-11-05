class ProfilePolicy < ApplicationPolicy


  def update?
    if  user.profile == record.user
      true
    else
      false
    end 
  end

end 