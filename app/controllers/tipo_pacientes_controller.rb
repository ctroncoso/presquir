class TipoPacientesController < ApplicationController
  def index
    @tipo_pacientes = TipoPaciente.all
  end
  
  def show
    @tipo_paciente = TipoPaciente.find(params[:id])
  end
  
  def new
    @tipo_paciente = TipoPaciente.new
  end
  
  def create
    @tipo_paciente = TipoPaciente.new(params[:tipo_paciente])
    if @tipo_paciente.save
      flash[:notice] = "Successfully created tipo paciente."
      redirect_to @tipo_paciente
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tipo_paciente = TipoPaciente.find(params[:id])
  end
  
  def update
    @tipo_paciente = TipoPaciente.find(params[:id])
    if @tipo_paciente.update_attributes(params[:tipo_paciente])
      flash[:notice] = "Successfully updated tipo paciente."
      redirect_to @tipo_paciente
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tipo_paciente = TipoPaciente.find(params[:id])
    @tipo_paciente.destroy
    flash[:notice] = "Successfully destroyed tipo paciente."
    redirect_to tipo_pacientes_url
  end
end
