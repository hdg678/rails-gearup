class Account::ProfilesController < Account::AccountController
  before_action :user_params, only: [:update]
  def show
  end

  def edit

  end

  def update
    if current_user.update(user_params)
      redirect_to account_profile_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :profile_pic)
  end
end
