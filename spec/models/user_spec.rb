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
    end
  end

  # Проверка метода модели перед созданием
  describe '#capitalize' do
    context 'when capitalized' do
      let(:user) { create(:user) }

      # Должен вернуть заглавную букву имени
      it 'should return name.capitalize' do
        expect(user.name[0].first).to eq('М')
      end
    end
  end

  # Проверка атрибутов вновь соданного ползователя
  describe 'attributes user' do
    context 'when correct valid attributes' do
      let(:user) { create(:user) }

      # Должен вернуть правильное имя
      it 'should return correct name' do
        expect(user.name).to include('Мишка')
      end

      # Должен вернуть правильную дату
      it 'should return correct birth_date' do
        expect(user.birth_date).to eq(Date.parse("15.07.2001"))
      end

      # Должен вернуть правильный пол
      it 'should return correct gender' do
        expect(user.gender).to eq('м')
      end

      # Должен вернуть правильный ник
      it 'should return correct nickname' do
        expect(user.nickname).to include('rumor')
      end

      # Должен вернуть правильную почту
      it 'should return correct email' do
        expect(user.email).to eq('juwpan_15@gmail.com')
      end

      # Должен вернуть правильный ник
      it 'should return correct password_confirmation' do
        expect(user.password_confirmation == user.password = '1').to eq(true)
      end
      
      # Должен вернуть правильный ник
      it 'should return correct confirmed_at' do
        expect(user.confirmed_at).to be_truthy
      end
    end
  end
end
