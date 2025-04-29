class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list"})
  end

  def show_details
    movie_id = params.fetch("movie_id")
    matching_records = Movie.where({ :id => movie_id })
    @the_movie = matching_records.at(0)

    matching_director = Director.where({ :id => @the_movie.director_id })
    @the_director = matching_director.at(0).name

    render({ :template => "movie_templates/movie_details"})
  end
end
