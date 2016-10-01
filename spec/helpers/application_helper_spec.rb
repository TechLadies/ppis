require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

  describe '#app_data' do

    let(:expected) do
      {
        'data-environment' => 'test',
        'data-view' => 'Foo_Bar.BazView'
      }
    end

    before do
      allow(controller).to receive(:controller_path) { 'foo/bar' }
      allow(controller).to receive(:action_name) { 'baz' }
    end

    it { expect(helper.app_data).to eq(expected) }

  end

  describe '#body_css_class' do

    let(:expected) { 'foo-bar foo-bar-baz' }

    before do
      allow(controller).to receive(:controller_path) { 'foo/bar' }
      allow(controller).to receive(:action_name) { 'baz' }
    end

    it { expect(helper.body_css_class).to eq(expected) }

  end

  describe '#active_link' do

    before do
      allow(controller).to receive(:controller_name) { 'foo_bar' }
      allow(controller).to receive(:action_name) { 'baz' }
    end

    context 'with matched controller & action' do

      it { expect(helper.active_link('foo_bar', 'baz')).to eq('active') }

    end

    context 'without matched controller & action' do

      it { expect(helper.active_link('foo_bar', 'foo')).to eq('') }

    end

  end

  describe '#decorate' do

    class Foo; end
    class FooDecorator < SimpleDelegator; end

    let(:model) { Foo.new }

    it { expect(decorate(model)).to be_a_decorated(model).with(FooDecorator) }

  end

end
