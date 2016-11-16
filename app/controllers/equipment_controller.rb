class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.near(params[:address], 30)
  end
end
