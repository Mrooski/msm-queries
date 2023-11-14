class MovieController < ApplicationController

  def home
    @table = Movie.all
    @director = Director.all
    render({:template => "misc_templates/movies"})
  end

  def individual
    single_movie_ID = Movie.where({ :id => params.fetch("id")})
    @single_movie = single_movie_ID.at(0)
    @director = Director.where({:id => @single_movie.director_id}).at(0).name
    render({ :template => "misc_templates/unique_movie"})
  end

end
