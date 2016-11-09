require 'rails_helper'

RSpec.describe Center, type: :model do

  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:contact_number) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:manager_name) }
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }

end
