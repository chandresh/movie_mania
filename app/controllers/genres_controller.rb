class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render :new
    end
  end

  def genre_params
    params.require(:genre).
        permit(:name)
  end

end
