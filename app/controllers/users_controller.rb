class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @post_images=@user.post_images #特定のユーザに関連つけられた投稿すべてを取得しpost_imageに渡す
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id]) #ユーザーの取得
    @user.update(user_params)
    redirect_to user_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
