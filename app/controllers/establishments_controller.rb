class EstablishmentsController < ApplicationController
  def show
    @establishment = Establishment.find(params[:id])
  end
end