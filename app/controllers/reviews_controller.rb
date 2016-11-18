class ReviewsController < ApplicationController
  before_action :set_equipment
  def create
    if params[:review]
      @review = Review.new(review_params)
      @review.equipment = @equipment
      @review.save
      redirect_to equipment_path(@equipment)
    else
      raise
      render equipment_path(@equipment)
    end
  end

  private
  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end

  def review_params
    params.require(:review).permit(:number)
  end
end
