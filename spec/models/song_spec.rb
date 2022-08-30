require 'rails_helper'

RSpec.describe Song, type: :model do
  describe '#validations_check' do
    context 'when validations presence' do
      # title validation
      it { should validate_presence_of :title }
      # body validation
      it { should validate_presence_of :body }
      # name_author validation
      it { should validate_presence_of :body }
    end
  end

  # Проверка атрибутов вновь соданной модели
  describe 'attributes song' do
    let(:user) { create(:user) }
    let(:song) { create(:song, user: user) }
    
    context 'when correct valid attributes' do
      # Должен вернуть коректное тело теста
      it "sould return correct body" do
        expect(song.body).to include("Сдесь должна быть ваша песня с аккордами")
      end
      # Должен вернуть коректное title
      it "sould return correct body" do
        expect(song.title).to include("Название песенки что добавил пользователь")
      end
      # Должен вернуть  коректное name_author
      it "sould return correct body" do
        expect(song.name_author).to include("Дуда Мара Тотем спирит")
      end
    end
  end

  describe '#author_songs' do
    context 'correct .author_songs' do
      let(:user) { create(:user) }
      let(:song) { create(:song, user: user) }

      it 'must return an element from the array included in Song.author_songs' do
        expect(song.author_songs).to include(song.author_songs.first)
      end
    end
  end
end
