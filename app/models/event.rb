class Event < ApplicationRecord

  include AASM

  belongs_to :center

  has_many :volunteer_events
  has_many :volunteers, through: :volunteer_events
  has_many :job_requirements, class_name: 'EventJobRequirement'
  accepts_nested_attributes_for :job_requirements, reject_if: :all_blank, allow_destroy: true

  validates :center, presence: true
  validates :event_name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :location, presence: true
  validates :number_of_volunteers, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }

  validate :start_time_must_be_before_end_time

  before_validation :calculate_duration

  aasm :column => 'state' do
    state :draft, :initial => true
    state :published
    state :cancelled

    event :publish do
      transitions :from => :draft, :to => :published
    end

    event :cancel do
      transitions :from => :published, :to => :cancelled
    end
  end

  private

  def calculate_duration
    self.duration = end_time.to_i - start_time.to_i
  end

  def start_time_must_be_before_end_time
    if start_time > end_time
      errors.add(:start_time, 'must be before end time')
      errors.add(:end_time, 'must be after start time')
    end
  end

end
