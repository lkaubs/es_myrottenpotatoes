class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id]) unless Movie.find_by_id(params[:id]).nil?
    redirect_to '/movies/error_movie_not_found' unless !@movie.nil?
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      flash[:notice] = "Não foi possível salvar o filme #{@movie.title}." + @movie.errors.full_messages.join(',')
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to root_path, :notice => "#{@movie.title} foi deletado."
  end
  private
    def movie_params
      params.require(:movie).permit(:title, :rating, :release_date, :description)
    end
end