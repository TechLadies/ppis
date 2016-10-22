class Certification < ApplicationRecord
  has_many :certifications_volunteers

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
