class MoviesController < ApplicationController
  def index
    @movies = Movie.includes(:production_company).all.order("average_vote ASC")
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
