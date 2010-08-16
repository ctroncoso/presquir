class PrevisionsController < ApplicationController
  def index
    @previsions = Prevision.all
  end
  
  def show
    @prevision = Prevision.find(params[:id])
  end
  
  def new
    @prevision = Prevision.new
  end
  
  def create
    @prevision = Prevision.new(params[:prevision])
    if @prevision.save
      flash[:notice] = "Successfully created prevision."
      redirect_to @prevision
    else
      render :action => 'new'
    end
  end
  
  def edit
    @prevision = Prevision.find(params[:id])
  end
  
  def update
    @prevision = Prevision.find(params[:id])
    if @prevision.update_attributes(params[:prevision])
      flash[:notice] = "Successfully updated prevision."
      redirect_to @prevision
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @prevision = Prevision.find(params[:id])
    @prevision.destroy
    flash[:notice] = "Successfully destroyed prevision."
    redirect_to previsions_url
  end
end
