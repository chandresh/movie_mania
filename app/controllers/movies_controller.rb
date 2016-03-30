class MoviesController < ApplicationController
  def index
    @genres = Genre.all
    @movies = Movie.all
  end

  def show
  end
end
