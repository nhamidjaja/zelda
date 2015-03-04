require 'rails_helper'

RSpec.describe LinksController, type: :controller do

  describe "GET #new" do
    before { get :new }
    subject { response }

    it { is_expected.to have_http_status(:success) }
    it { is_expected.to render_template(:new) }
    it { expect(assigns(:link)).to be_a_new(Link)}
  end

end
