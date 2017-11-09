class Profile < ApplicationRecord
  include ImageUploader[:avatar]

  belongs_to :user

    # Sorting method
    def self.sort_profiles(sort_by)
      if sort_by == "highest_rated" || sort_by.blank?
        order(created_at: :asc)
      elsif sort_by == "new"
        order(created_at: :desc)
      elsif sort_by == "name"
        order(first_name: :asc)
      else 
        order(created_at: :desc)
      end  
    end 
    
end
