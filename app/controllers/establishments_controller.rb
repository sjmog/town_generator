class EstablishmentsController < ApplicationController
  def show
    @town          = Town.find(params[:town_id])
    @establishment = Establishment.find(params[:id])
  end
end