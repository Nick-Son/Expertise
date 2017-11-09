class User < ApplicationRecord
  has_one :profile
  has_and_belongs_to_many :expertise_areas
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def add_expertise
    
  end 
end
