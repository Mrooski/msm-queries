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

  def eldest
    @oldest_director_dob = Director.where.not({:dob => nil}).minimum(:dob)
    @oldest_director = Director.where({:dob => @oldest_director_dob}).at(0)
    @oldest_director_dob = DateTime.parse(@oldest_director_dob.to_s).strftime("%B %d, %Y")
    render({ :template => "misc_templates/eldest"})
  end

  def youngest
    @youngest_director_dob = Director.where.not({:dob => nil}).minimum(:dob)
    @youngest_director = Director.where({:dob => @youngest_director_dob}).at(0)
    @youngest_director_dob = DateTime.parse(@youngest_director_dob.to_s).strftime("%B %d, %Y")
    render({ :template => "misc_templates/youngest"})
  end

end
