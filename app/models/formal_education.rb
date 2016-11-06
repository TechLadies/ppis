class FormalEducation < ApplicationRecord

  has_many :volunteers

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
