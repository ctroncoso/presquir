class PresupuestosController < ApplicationController
  before_filter :check_login
  def index
    if params[:ejecutiva_id]
      @presupuestos = Presupuesto.find(:all, :conditions => {:ejecutiva_id => params[:ejecutiva_id]})
    else
      @presupuestos = Presupuesto.all
    end
  end

  def show
    @presupuesto = Presupuesto.find(params[:id])
  end

  def new
    @presupuesto = Presupuesto.new
    @ejecutivas=Ejecutiva.find(:all)
  end

  def create
    @presupuesto = Presupuesto.new(params[:presupuesto])
    if @presupuesto.save
      flash[:notice] = "Successfully created presupuesto."
      redirect_to @presupuesto
    else
      render :action => 'new'
    end
  end

  def edit
    @presupuesto = Presupuesto.find(params[:id])
    @ejecutivas=Ejecutiva.find(:all)
  end

  def update
    @presupuesto = Presupuesto.find(params[:id])
    if @presupuesto.update_attributes(params[:presupuesto])
      flash[:notice] = "Successfully updated presupuesto."
      redirect_to @presupuesto
    else
      render :action => 'edit'
    end
  end

  def destroy
    @presupuesto = Presupuesto.find(params[:id])
    @presupuesto.destroy
    flash[:notice] = "Successfully destroyed presupuesto."
    redirect_to presupuestos_url
  end
end

