class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end

  def show_details
    the_id = params.fetch("the_id")
    matching_records = Actor.where({ :id => the_id })
    @the_actor = matching_records.at(0)

    render({ :template => "actor_templates/actor_details"})
  end

end
