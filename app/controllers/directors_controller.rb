class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def young
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first
    render({ :template => "director_templates/young"})
  end

  def elder
    @eldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    render({ :template => "director_templates/elder"})
  end

  def show_details
    the_id = params.fetch("the_id")
    matching_records = Director.where({ :id => the_id })
    @the_director = matching_records.at(0)
    
    render({ :template => "director_templates/director_details"})
  end

end
