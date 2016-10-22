class TargetGroup < ApplicationRecord

  has_many :preferred_target_groups

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
