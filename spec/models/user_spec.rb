require 'rails_helper'
require 'support/factory_bot'

RSpec.describe User, type: :model do
  # Проверяем наличии валидации
  context "validations check" do
    it { should validate_presence_of :email }
  end
end
