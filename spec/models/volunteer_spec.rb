require 'rails_helper'

RSpec.describe Volunteer, type: :model do

  it { is_expected.to belong_to(:formal_education) }

  it { is_expected.to have_many(:certifications_volunteers) }
  it { is_expected.to have_many(:certifications).through(:certifications_volunteers) }

  it { is_expected.to have_many(:preferred_availabilities) }
  it { is_expected.to have_many(:availabilities).through(:preferred_availabilities) }

  it { is_expected.to have_many(:preferred_centers) }
  it { is_expected.to have_many(:centers).through(:preferred_centers) }

  it { is_expected.to have_many(:preferred_target_groups) }
  it { is_expected.to have_many(:target_groups).through(:preferred_target_groups) }

  it { is_expected.to have_many(:skills_volunteers) }
  it { is_expected.to have_many(:skills).through(:skills_volunteers) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to define_enum_for(:gender).with([:male, :female]) }

end
