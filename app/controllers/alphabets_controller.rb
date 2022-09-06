class AlphabetsController < ApplicationController
  before_action :set_alphabet, only: %i[show]
  
  def index
    @alphabets = Alphabet.all
  end

  def show
  end

  private

  def set_alphabet
    @alphabet = Alphabet.find(params[:id])
  end
end
