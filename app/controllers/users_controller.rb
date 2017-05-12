class UsersController < ApplicationController

  def new
    @user=User.new
  end
  def create
     # binding.pry
     @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to "wel", notice: 'Signup successfully!!!!!!!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def user_params
      params.require(:user).permit(:uname, :email, :address, :phno, :password)
  end
  def index

    @user=User.all
  end
end
