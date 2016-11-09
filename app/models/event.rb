class Event < ApplicationRecord
  belongs_to :center
  validates :center, presence: true
  validates :event_name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true, uniqueness: { case_sensitive: false }
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location, presence: true
  validates :number_of_volunteers, presence: true
end
