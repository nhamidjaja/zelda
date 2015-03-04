require 'rails_helper'

RSpec.describe LinksController, type: :controller do

  describe "GET #new" do
    before { get :new }
    subject { response }

    it { is_expected.to have_http_status(:success) }
    it { is_expected.to render_template(:new) }
    it { expect(assigns(:link)).to be_a_new(Link)}
  end

  describe 'POST #create' do
    context 'valid' do
      let(:links_params) { FactoryGirl.attributes_for(:link) }

      it 'creates new link' do
        expect{ post :create, link: links_params }.to change(Link, :count).by(1)
      end

      it 'redirects to root' do
        post :create, link: links_params

        expect(response).to redirect_to(root_path)
      end
    end

    context 'invalid' do
      let(:links_params) { FactoryGirl.attributes_for(:invalid_link) }
      before { post :create, link: links_params }

      it { expect(response).to render_template(:new) }
      it { expect(assigns(:link)).to_not be_nil }
    end
  end
end
