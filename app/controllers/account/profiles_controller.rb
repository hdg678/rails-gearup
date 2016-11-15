class Account::ProfilesController < Account::AccountController
  before_action :user_params, only: [:update]
  def show
  end

  def edit

  end

  def update
    @user = current_user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
