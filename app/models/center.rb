class Center < ApplicationRecord

  has_many :preferred_centers

  validates :address, presence: true
  validates :contact_number, presence: true
  validates :email, presence: true
  validates :manager_name, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
