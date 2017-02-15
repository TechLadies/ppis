class PreferredCenter < ApplicationRecord

  belongs_to :center
  belongs_to :volunteer
  has_many :events

end
