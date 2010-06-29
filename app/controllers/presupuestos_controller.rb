class PresupuestosController < ApplicationController
  before_filter :check_login
  def index
    if params[:user_id]
        @presupuestos = User.find(params[:user_id]).presupuestos
    else
        @presupuestos = User.find(:all).map(&:presupuestos).flatten
    end
    @presupuestos = @presupuestos.select{|p| p.pending == true}         if params[:pending]
  end

  def show
    @presupuesto = Presupuesto.find(params[:id])
  end

  def new
    @presupuesto = Presupuesto.new
    @presupuesto.paciente=Paciente.new
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
    @presupuesto.paciente=Paciente.new if @presupuesto.paciente.nil?
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

