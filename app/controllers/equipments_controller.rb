class EquipmentsController < ApplicationController
  before_action :get_equipment, only: [:show, :update, :destroy]
  def index
    @equipments = Equipment.all
  end

  def show
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.create(equipment_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :price, :instructions)
  end
end
