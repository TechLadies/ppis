require 'rails_helper'

RSpec.describe CentersController, type: :controller do

  let(:admin) { create(:admin) }

  before { sign_in admin }

  describe 'POST #create' do

    context 'when params is valid' do

      let(:center_attributes) { attributes_for(:center) }

      before { post :create, params: { center: center_attributes } }

      it { expect(response.status).to eq(302) }
      it { expect(response).to redirect_to(center_path(assigns(:center))) }
    end

    context 'when params is invalid' do

      let(:center_attributes) { attributes_for(:center, :invalid) }

      before { post :create, params: { center: center_attributes } }

      it { expect(response.status).to eq(200) }
      it { expect(response).to render_template(:new) }
    end
  end

end
