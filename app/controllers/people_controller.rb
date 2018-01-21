class PeopleController < ApplicationController
  def index
    @town = Town.find(params[:town_id])
    @people = @town.people

    @people = @people.where(occupation: params[:occupation]) if params[:occupation]
  end

  def show
    @town = Town.find(params[:town_id])
    @person = Person.find(params[:id])
    @person.generate_ability_scores! unless @person.has_ability_scores?
    @person.generate_relationships! unless @person.has_relationships?
  end
end