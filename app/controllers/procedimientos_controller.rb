class ProcedimientosController < ApplicationController
  def index
    @presupuesto=Presupuesto.find params[:presupuesto_id]
    @procedimientos=@presupuesto.fonasa_mles
  end
  def new
    @presupuesto = Presupuesto.find params[:presupuesto_id]
    @procedimiento=@presupuesto.fonasa_mles.build 
  end
  def create
    @presupuesto = Presupuesto.find params[:presupuesto_id]
    @fonasa_mle = FonasaMle.find(params[:fonasa_mle][:id])
    @presupuesto.fonasa_mles << @fonasa_mle
    redirect_to presupuesto_procedimientos_path
  end
  def destroy
    @presupuesto = Presupuesto.find params[:presupuesto_id]
    @presupuesto.fonasa_mles.delete(@presupuesto.fonasa_mles.find(params[:id]))
    redirect_to presupuesto_procedimientos_path
  end
end
