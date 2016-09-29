class Center < ApplicationRecord
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :manager_name, presence: true
	validates :email, presence: true
	validates :contact_number, presence: true
	validates :address, presence: true
end
