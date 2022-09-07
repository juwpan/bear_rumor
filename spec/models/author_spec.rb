require 'rails_helper'

RSpec.describe Author, type: :model do
  describe "validates check" do
    context 'when validates presence' do
      # Обязательное присутвие name
      it { should validate_presence_of :name }
      # Присутствие буквы
      it { should validate_presence_of :letter }
    end
  end

  describe "#save_array_alphabets" do
    context "correct .save_array_alphabets" do
      let(:author) { create(:author) }

      it "should return correct letter" do
        expect(author.save_array_alphabets.first.abc).to eq("А")
      end
    end
  end
end
