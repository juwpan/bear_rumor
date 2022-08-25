require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  let(:user) { create(:user) }
  
  describe "GET index" do
    before { get :index, params: {id: user.id} }

    context "when user not authorize" do
      it "has a 200 status code" do
        expect(response.status).to eq(200)
      end
    end
  end
end
