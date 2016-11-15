class Account::EquipmentController < Account::AccountController
  before_action :get_equipment, only: [:show, :update, :destroy]

  def index
    @all_equipment = current_user.equipment
  end

  def show
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = current_user.equipment.create(equipment_params)
    if @equipment.save
      redirect_to account_equipment_index_path
    else
      render :new
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = current_user.equipment.update(equipment_params)
    if @equipment.save
      redirect_to account_equipment_index_path
    else
      render :edit
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
  end

  private

  def get_equipment
    @equipment = Equipment.find(params[:id])
  end

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :price, :instructions)
  end
end
