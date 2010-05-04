class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end
  
  def show
    @menu = Menu.find(params[:id])
  end
  
  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      flash[:notice] = "Successfully created menu."
      redirect_to @menu
    else
      render :action => 'new'
    end
  end
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      flash[:notice] = "Successfully updated menu."
      redirect_to @menu
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    flash[:notice] = "Successfully destroyed menu."
    redirect_to menus_url
  end
end
