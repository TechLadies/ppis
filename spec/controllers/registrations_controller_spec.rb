require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  describe 'GET #new' do

    before { @request.env["devise.mapping"] = Devise.mappings[:volunteer] }
    before { get :new }

    it { expect(response.status).to eq(200) }
    it { expect(response).to render_template(:new) }

  end

end
