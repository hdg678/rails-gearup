class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.near(params[:address], 30)

    @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end
end
