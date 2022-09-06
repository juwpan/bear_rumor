class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show]

  def index
    @authors = Author.all
    @alphabets = Alphabet.all
  end

  def show
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end
end
