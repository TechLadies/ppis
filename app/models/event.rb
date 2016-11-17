class Event < ApplicationRecord
  belongs_to :center
  validates :center, presence: true
  validates :event_name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location, presence: true
  validates :number_of_volunteers, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }

  before_validation :calculate_duration

  private

  def calculate_duration
    self.duration = end_time.to_i - start_time.to_i
  end

end
