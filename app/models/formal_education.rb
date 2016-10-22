class FormalEducation < ApplicationRecord

  has_many :highest_educations

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
