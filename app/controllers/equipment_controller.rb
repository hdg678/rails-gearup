class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.near(params[:address])
  end
end
