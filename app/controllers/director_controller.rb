class DirectorController < ApplicationController
  
  def home
    @table = Director.all
    render({ :template => "misc_templates/directors"})
  end
  
  def individual
    single_director_ID = Director.where({ :id => params.fetch("id")})
    @single_director = single_director_ID.at(0)
    render({ :template => "misc_templates/unique_director"})
  end

end
