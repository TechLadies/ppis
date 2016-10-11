class Availability < ApplicationRecord
  has_many :preferred_availabilities

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
