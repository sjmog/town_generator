class TownsController < ApplicationController
  def new
    @town = Town.new
  end

  def create
    if town = Town.find_by_name(town_params[:name])
      return redirect_to town
    end

    town = Town.generate(town_params)

    if town.save
      redirect_to town
    else
      render :new, notice: "Error creating Town"
    end
  end

  def show
    @town = Town.find(params[:id])
  end

  private

  def town_params
    params.require(:town).permit(:name, :size)
  end
end