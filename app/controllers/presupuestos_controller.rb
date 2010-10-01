class PresupuestosController < ApplicationController
  before_filter :check_login
  def index
    params[:user_id] = current_user.id if !admin?
    if params[:user_id]
        @presupuestos = User.find(params[:user_id]).presupuestos
    else
        @presupuestos = User.find(:all).map(&:presupuestos).flatten
    end
    @presupuestos = @presupuestos.select{|p| (p.estado.nil? || p.estado == 0)}         if params[:pending]
  end

  def show
    @presupuesto = Presupuesto.find(params[:id])
  end

  def new
    @presupuesto = Presupuesto.new
    @presupuesto.paciente=Paciente.new
    @presupuesto.build_intencion
    @presupuesto.fecha_inicio_gestion=Date.today
#    @presupuesto.user=current_user
    @users=User.find(:all)
    @today=Date.today
    @tab=params[:tab] || 0
  end

  def create
    @presupuesto = Presupuesto.new(params[:presupuesto])
    @presupuesto.user=current_user
    if @presupuesto.save
      flash[:notice] = "Successfully created presupuesto."
      redirect_to @presupuesto
    else
      @tab=0
      render :action => 'new'
    end
  end

  def edit
    @presupuesto = Presupuesto.find(params[:id])
    @presupuesto.paciente=Paciente.new if @presupuesto.paciente.nil?
    @presupuesto.build_intencion if @presupuesto.intencion.nil?
    @users=User.find(:all)
    @tab=params[:tab] || 0
  end

  def update
    @presupuesto = Presupuesto.find(params[:id])
    if @presupuesto.update_attributes(params[:presupuesto])
      flash[:notice] = "Presupuesto actualizado."
      if params[:commit] == "Prestaciones"
        redirect_to presupuesto_procedimientos_path(@presupuesto)
      else
        redirect_to :presupuestos
      end
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

