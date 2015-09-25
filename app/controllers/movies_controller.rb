class MoviesController < ApplicationController

	before_filter :get_movie, only: [:show, :edit, :update, :destroy]

	def index
		@movies = Movie.all
	end

	def edit
	end

	def show
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

	def update
			if @movie.update_attributes(sanitized_movie_params)
				redirect_to movie_path(@movie)
			else
				render :edit
			end
	end

	def destroy
			@movie.destroy
			redirect_to "/movies"
	end


	private

	def sanitized_movie_params
		params.require(:movie).permit(:title, :director, :release_year, :rating, :time_watched)
	end

	def get_movie
		@movie = Movie.find(params[:id])
	end

end