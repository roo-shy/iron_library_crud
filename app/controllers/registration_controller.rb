class RegistrationController < ApplicationController
#POST /users
#POST /users.json

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.save
      #Tell the UserMailer to send a welcome Email after save
      UserMailer.welcome_email(@user).deliver
      session[:user_id] = @user.id # remember who user is
      redirect_to root_path
    else
      render :new
    end
  end
end
