class HomeController < ApplicationController


    def index 
    puts SearchMovie.new.perform 
    end 
end
