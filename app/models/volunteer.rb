class Volunteer < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :formal_education

  has_many :certifications_volunteers
  has_many :certifications, through: :certifications_volunteers

  has_many :volunteer_events
  has_many :events, through: :volunteer_events

  has_many :preferred_availabilities
  has_many :availabilities, through: :preferred_availabilities

  has_many :preferred_centers
  has_many :centers, through: :preferred_centers

  has_many :preferred_target_groups
  has_many :target_groups, through: :preferred_target_groups

  has_many :skills_volunteers
  has_many :skills, through: :skills_volunteers

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  validate :must_have_certification
  validate :must_have_availabilities
  validate :must_have_centers
  validate :must_have_target_groups
  validate :must_have_skills

  enum gender: [:male, :female]

  enum marital_status: [:Single, :Married, :Divorced, :Widowed]

  def destroy
    update_attribute(:deleted_at, Time.zone.now)
  end

  def reactivate_volunteer
    update_attribute(:deleted_at, nil)
  end

  def active_for_authentication?
    super && !deleted_at
  end

  def inactive_message
    !deleted_at ? super : :deleted_account
  end

  private

  def must_have_certification
    errors.add(:certification_ids, 'must have at least one') if certifications.size.zero?
  end

  def must_have_availabilities
    errors.add(:availability_ids, 'must have at least one') if availabilities.size.zero?
  end

  def must_have_centers
    errors.add(:center_ids, 'must have at least one') if centers.size.zero?
  end

  def must_have_target_groups
    errors.add(:target_group_ids, 'must have at least one') if target_groups.size.zero?
  end

  def must_have_skills
    errors.add(:skill_ids, 'must have at least one') if skills.size.zero?
  end

end
