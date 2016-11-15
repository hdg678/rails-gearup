class Account::ProfilesController < Account::AccountController
  def show
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:users).permit(:first_name, :last_name, :category, :price, :instructions)
  end
end
