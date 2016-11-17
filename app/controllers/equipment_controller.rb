class EquipmentController < ApplicationController
  def index
    if params[:category] == "All" && params[:address] == ""
      @equipment = Equipment.where(nil)
    elsif params[:address] != "" && params[:category] == "All"
      @equipment = Equipment.where(nil).near(params[:address], 30)
    elsif params[:category] != "" && params[:address] == ""
      @equipment = Equipment.where(nil).category(params[:category])
    else
      @equipment = Equipment.near(params[:address], 30).category(params[:category])
    end

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
