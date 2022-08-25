require 'rails_helper'
require 'support/factory_bot'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user) }
  
  describe "GET show" do
    context 'when user authorized' do
      before { sign_in user }

      it "will give status 200" do
        expect(response.status).to eq(200)
      end
    end
  end
end
