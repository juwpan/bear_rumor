class ResultsController < ApplicationController
  def index
    @search_results = Song.search_everywhere(params[:query])
  end
end
