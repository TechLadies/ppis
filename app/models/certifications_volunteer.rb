class CertificationsVolunteer < ApplicationRecord
  belongs_to :certification
  belongs_to :volunteer
end
