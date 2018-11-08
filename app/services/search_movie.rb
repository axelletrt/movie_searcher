class SearchMovie 

    def initialize 
        Tmdb::Api.key(Rails.application.credentials[:access_key_id])
    end 

    def search 
        array = []
        @search = Tmdb::Search.new
        @search.resource('movie')
        @search.query('Star Wars')
        results.each do |movie|
            hash = {}
            hash['title'] = movie['title']
            hash['release'] = movie['release_date']
            array << hash
    end 


    def perform 
        search 
    end 


end 

