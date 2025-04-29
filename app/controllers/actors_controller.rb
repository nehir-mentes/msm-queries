class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end

  def show_details
    the_id = params.fetch("the_id")
    matching_records = Actor.where({ :id => the_id })
    @the_actor = matching_records.at(0)
    
    matching_character = Character.where({ :actor_id => the_id })
    @the_movie = matching_character
    #.at(0).movie_id

    render({ :template => "actor_templates/sample"})

    #matching_director = Movie.where({ :id => @the_movie })
    #@the_director = matching_director.at(0).name

    #render({ :template => "actor_templates/actor_details"})
  end

end
