class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

 def details
    the_id = params.fetch("a_id")
    @the_actor = Actor.where({:id=> the_id}).at(0)
    @filmography = Character.where({ :actor_id => @the_actor.id})
    render({ :template => "actor_templates/show.html.erb"})
  end


end