require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "validates check" do
    # Обязательное присутвие name
    context 'when validates presence' do
      it { should validate_presence_of :name }
    end
  end
end
