class IntencionsController < ApplicationController
  def index
    @intencions = Intencion.all
  end
  
  def show
    @intencion = Intencion.find(params[:id])
  end
  
  def new
    @intencion = Intencion.new
  end
  
  def create
    @intencion = Intencion.new(params[:intencion])
    if @intencion.save
      flash[:notice] = "Successfully created intencion."
      redirect_to @intencion
    else
      render :action => 'new'
    end
  end
  
  def edit
    @intencion = Intencion.find(params[:id])
  end
  
  def update
    @intencion = Intencion.find(params[:id])
    if @intencion.update_attributes(params[:intencion])
      flash[:notice] = "Successfully updated intencion."
      redirect_to @intencion
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @intencion = Intencion.find(params[:id])
    @intencion.destroy
    flash[:notice] = "Successfully destroyed intencion."
    redirect_to intencions_url
  end
end
