class CarterasController < ApplicationController
  def index
    if params[:search]
        @carteras = Cartera.all(:conditions => ['empresa like ?',"%#{params[:search]}%" ], :order =>'empresa')
    else
        @carteras = Cartera.paginate :page => params[:page], :per_page => 20, :order=>'empresa'
    end
  end

  def show
    @cartera = Cartera.find(params[:id])
  end

  def new
    @cartera = Cartera.new
  end

  def create
    @cartera = Cartera.new(params[:cartera])
    if @cartera.save
      flash[:notice] = "Successfully created cartera."
      redirect_to @cartera
    else
      render :action => 'new'
    end
  end

  def edit
    @cartera = Cartera.find(params[:id])
  end

  def update
    @cartera = Cartera.find(params[:id])
    if @cartera.update_attributes(params[:cartera])
      flash[:notice] = "Successfully updated cartera."
      redirect_to @cartera
    else
      render :action => 'edit'
    end
  end

  def destroy
    @cartera = Cartera.find(params[:id])
    @cartera.destroy
    flash[:notice] = "Successfully destroyed cartera."
    redirect_to carteras_url
  end
end

