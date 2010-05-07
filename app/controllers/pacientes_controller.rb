class PacientesController < ApplicationController
  def index
    @pacientes = Paciente.all
  end
  
  def show
    @paciente = Paciente.find(params[:id])
  end
  
  def new
    @paciente = Paciente.new
  end
  
  def create
    @paciente = Paciente.new(params[:paciente])
    if @paciente.save
      flash[:notice] = "Successfully created paciente."
      redirect_to @paciente
    else
      render :action => 'new'
    end
  end
  
  def edit
    @paciente = Paciente.find(params[:id])
  end
  
  def update
    @paciente = Paciente.find(params[:id])
    if @paciente.update_attributes(params[:paciente])
      flash[:notice] = "Successfully updated paciente."
      redirect_to @paciente
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @paciente = Paciente.find(params[:id])
    @paciente.destroy
    flash[:notice] = "Successfully destroyed paciente."
    redirect_to pacientes_url
  end
end
