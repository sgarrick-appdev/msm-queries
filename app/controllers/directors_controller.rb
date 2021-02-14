class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  
    render ({:template => "director_templates/index.html.erb"})

  end

  def wisest
    @oldest = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def details
    @id_num = params.fetch("foreign_id")
    @the_director = Director.where({:id => @id_num}).at(0)
    render ({ :template => "director_templates/show.html.erb"})
  end

end 

