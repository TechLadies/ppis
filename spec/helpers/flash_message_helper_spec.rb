require 'rails_helper'

RSpec.describe FlashMessageHelper, type: :helper do

  let(:expected_css_classes) do
    {
      success: 'alert-success',
      notice: 'alert-success',
      error: 'alert-danger',
      alert: 'alert-danger',
      info: 'alert-info',
      warning: 'alert-warning'
    }.with_indifferent_access
  end

  let(:expected_icons) do
    {
      success: 'check',
      notice: 'check',
      error: 'ban',
      alert: 'ban',
      info: 'info',
      warning: 'warning'
    }.with_indifferent_access
  end

  it { expect(described_class::CSS_CLASSES).to eq(expected_css_classes) }
  it { expect(described_class::ICONS).to eq(expected_icons) }

  describe '#bootstrap_css_class' do

    it { expect(bootstrap_css_class('success')).to eq('alert-success') }
    it { expect(bootstrap_css_class('')).to eq('alert-warning') }

  end

  describe '#bootstrap_icon' do

    it { expect(bootstrap_icon('success')).to eq('check') }
    it { expect(bootstrap_icon('')).to eq('warning') }

  end

end
