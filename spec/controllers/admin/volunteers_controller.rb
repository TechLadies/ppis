require 'rails_helper'

RSpec.describe Admin::VolunteersController, type: :controller do

  let(:admin) { create(:admin) }

  before { sign_in admin }

  describe 'POST #create' do

    context 'when params is valid' do

      let(:volunteer_attributes) { attributes_for(:volunteer) }

      before { post :create, params: { volunteer: volunteer_attributes } }

      it { expect(response.status).to eq(302) }
      it { expect(response).to redirect_to(volunteer_path(assigns(:volunteer))) }
    end

    context 'when params is invalid' do

      let(:volunteer_attributes) { attributes_for(:volunteer, :invalid) }

      before { post :create, params: { volunteer: volunteer_attributes } }

      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template(:new) }
    end
  end