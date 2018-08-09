class DosesController < ApplicationController

  def create
    @ingredients = Ingredient.all
    @doses = Dose.new(dose_param)
  end

  private

  def dose_param
    params.require(:dose).permit(:description)
  end
end
