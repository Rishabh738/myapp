class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
     
      redirect_to(root_path(@user))
    else
      render('new')
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    
    if @user.update(user_params)
      
      redirect_to(root_path(@user))
    else
      render('edit')
    end

  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    redirect_to(root_path)
  end

  private
  def user_params
    params.required(:user).permit(:name,:email,:password,:gender,:strength)
  end
end
