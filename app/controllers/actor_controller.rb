class ActorController < ApplicationController
  def home
    @actors = Actor.all
    render({:template => "misc_templates/actors"})
  end

  def individual
    actor = Actor.where({ :id => params.fetch("id")})
    @actor = actor.at(0)
    @their_characters = Character.where({:actor_id => @actor.id})
    @movies = Movie.all
    @directors = Director.all
    render({ :template => "misc_templates/unique_actor"})
  end
end
