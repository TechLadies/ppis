class Skill < ApplicationRecord

  has_many :skills_volunteers

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
