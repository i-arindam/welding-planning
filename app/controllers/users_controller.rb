class UsersController < ApplicationController
  before_action :find_user_by_id, only: [:show, :edit, :update, :destroy, :archive, :unarchive]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def archive
  end

  def unarchive
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation)
  end

  def find_user_by_id
    @user = User.find(params[:id])
  end

  protected
end
