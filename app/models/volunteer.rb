class Volunteer < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :formal_education

  has_many :certifications_volunteers
  has_many :certifications, through: :certifications_volunteers

  has_many :preferred_availabilities
  has_many :availabilities, through: :preferred_availabilities

  has_many :preferred_centers
  has_many :centers, through: :preferred_centers

  has_many :preferred_target_groups
  has_many :target_groups, through: :preferred_target_groups

  has_many :skills_volunteers
  has_many :skills, through: :skills_volunteers, :source=>"skill"

  validates :name, presence: true

  enum gender: [:male, :female]

end
