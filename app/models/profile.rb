class Profile < ApplicationRecord
  include ImageUploader[:avatar]

  belongs_to :user
end
