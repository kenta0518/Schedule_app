class PostsController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @users = User.new(params.permit(:title,:start,:end,:allday,:memo))
  if @users.save
    flash[:notice] ="投稿を作成しました"
    redirect_to :posts
  else
    render "new"
  end
  end

  def show
    @users = User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
    
  end

  def update
    @users = User.find(params[:id])
    @users = if @users.update(params.permit(:title,:start,:end,:allday,:memo))
    flash[:notice] = "情報を更新しました"
    redirect_to("/posts/index")
    else
    render "edit"
    end
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    flash[:notice] ="投稿を削除しました"
    redirect_to("/posts/index")
  end
end
