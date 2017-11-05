class ProfilePolicy < ApplicationPolicy

  def edit
    if  @profile.user == current_user
      true
    else
      false
    end 
  end

end 