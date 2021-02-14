class ActorsController < ApplicationController

  def index
  

    render({ :template => "actor_templates/index.html.erb"})
  end


end