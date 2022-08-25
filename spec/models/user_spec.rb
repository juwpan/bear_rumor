require 'rails_helper'
require 'support/factory_bot'

RSpec.describe User, type: :model do
  # Проверяем наличии валидации
  describe '#validations_check' do
    context 'when validations presence' do
      # email validation
      it { should validate_presence_of :email }
      # name validation
      it { should validate_presence_of :name }
      # nickname validation
      it { should validate_presence_of :nickname }
      # birth_date validation
      it { should validate_presence_of :birth_date }
      # gender validation
      it { should validate_presence_of :gender }
      # password validation
      it { should validate_presence_of :password }
    end

    # Проверяем уникальность
    context 'when nickname uniquess' do
      subject { FactoryBot.build(:user) }

      # Уникальный ник
      it { should validate_uniqueness_of(:nickname) }
      # #
      # it { should validate_uniqueness_of(:email) }
    end
  end

  # Проверка метода модели перед создание
  describe '#capitalize' do
    context 'when capitalized' do
      let(:user) { create(:user) }
      # Должен вернуть заглавную букву имени
      it 'should return name.capitalize' do
        expect(user.name[0].first).to eq('М')
      end
    end
  end
end
