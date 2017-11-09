class ExpertiseArea < ApplicationRecord
  has_and_belongs_to_many :users, join_table: "users_expertise"

  def has_expertise?(user)
    self.users.exists?(user.id)
  end
end
