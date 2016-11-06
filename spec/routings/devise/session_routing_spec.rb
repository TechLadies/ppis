require 'rails_helper'

RSpec.describe Devise::SessionsController, type: :routing do

  describe 'admin devise routes' do

    it { expect(get: '/admins/sign_in').to route_to('devise/sessions#new') }
    it { expect(post: '/admins/sign_in').to route_to('devise/sessions#create') }
    it { expect(delete: '/admins/sign_out').to route_to('devise/sessions#destroy') }

  end

  describe 'volunteer devise routes' do

    it { expect(get: '/volunteers/sign_in').to route_to('devise/sessions#new') }
    it { expect(post: '/volunteers/sign_in').to route_to('devise/sessions#create') }
    it { expect(delete: '/volunteers/sign_out').to route_to('devise/sessions#destroy') }

  end

end
