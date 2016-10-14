class Volunteer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :preferred_target_groups
  has_many :target_groups, through: :preferred_target_groups
  has_many :skills_volunteers
  has_many :skills, through: :skills_volunteers
  has_many :preferred_centers
  has_many :centers, through: :preferred_centers

end
