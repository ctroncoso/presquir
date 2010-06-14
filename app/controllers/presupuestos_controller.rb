class PresupuestosController < ApplicationController
  before_filter :check_login
  def index
    mine = params[:mine]
    mine = true  if !admin?
    pending = params[:pending]
    @presupuestos = current_user.presupuestos.pendientes if(mine && pending)
    @presupuestos = current_user.presupuestos            if(mine && !pending)
    @presupuestos = Presupuesto.all                      if(!mine && !pending)
    @presupuestos = Presupuesto.pendientes               if(!mine && pending)
  end

  def show
    @presupuesto = Presupuesto.find(params[:id])
  end

  def new
    @presupuesto = Presupuesto.new
    @users=User.find(:all)
    @today=Date.today
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
    @users=User.find(:all)
  end

  def update
    @presupuesto = Presupuesto.find(params[:id])
    if @presupuesto.update_attributes(params[:presupuesto])
      flash[:notice] = "Successfully updated presupuesto."
      redirect_to :presupuestos
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

