# class GenresController < ApplicationController

# 	before_filter :get_genre, only: [:show, :edit, :update, :destroy]

# 	def index
# 		@genres = Genre.all
# 	end

# 	def edit
# 	end

# 	def show
# 	end

# 	def new
# 		@genre= Genre.new
# 	end

# 	def create
# 		@Genre = Genre.new(sanitized_genre_params)
# 			if @Genre.save
# 				redirect_to genres_path
# 			else
# 				render :new
# 			end
# 	end

# 	def update
# 			if @genre.update_attributes(sanitized_genre_params)
# 				redirect_to genre_path(@genre)
# 			else
# 				render :edit
# 			end
# 	end

# 	def destroy
# 			@mgenre.destroy
# 			redirect_to "/genres"
# 	end


# 	private

# 	def sanitized_genre_params
# 		params.require(:genre).permit(:name)
# 	end

# 	def get_genre
# 		@genre = Genre.find(params[:id])
# 	end

# end