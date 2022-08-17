require 'rails_helper'

RSpec.describe Song, type: :model do
  describe '#validations_check' do
    context 'when validations presence' do
      # name validation
      it { should validate_presence_of :name }
      # body validation
      it { should validate_presence_of :body }
    end

    context 'when author unique' do
      subject { FactoryBot.build(:song) }

      # Уникальный ник
      it { should validate_uniqueness_of(:author) }
    end
  end
end
