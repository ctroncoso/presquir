class UsersController < ApplicationController
  before_filter :check_login
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Usuario Creado con éxito."
      redirect_to @user
    else
      render :action => 'new'
    end
  end

  def edit
    session['return_path'] = request.referer
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Usuario Actualizado con éxito."
      if session['return_path']
        redirect_to session['return_path']
      else
        redirect_to :root
      end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Usuario ELIMINADO."
    redirect_to users_url
  end

end

