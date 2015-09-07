class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(sanitized_movie_params)
			if @movie.save
				redirect_to movies_path
			else
				render :new
			end
	end

	private

	def sanitized_movie_params
		params.require(:movie).permit(:title, :director, :release_year, :rating)
	end

end