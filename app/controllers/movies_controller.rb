class MoviesController < ApplicationController

    # def index 
    # @movies = SearchMovie.new.perform 
    # end 

    def search
        @movie = SearchMovie.new(search_params[:title]).perform
    end
    
    private
    def search_params
      params.permit(:title)
    end

end


