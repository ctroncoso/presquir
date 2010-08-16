class FonasaMlesController < ApplicationController
  def index
    if params[:term]
        @fonasa_mles = FonasaMle.all(:conditions => ['descripcion like ?',"%#{params[:term]}%" ], :order =>'descripcion')
    else
        @fonasa_mles = FonasaMle.paginate   :page => params[:page],
                                            :per_page => 20,
                                            :conditions => ['descripcion like?', "%#{params[:search]}%"],
                                            :order => :descripcion
    end
  end

  def show
    @fonasa_mle = FonasaMle.find(params[:id])
  end

  def new
    @fonasa_mle = FonasaMle.new
  end

  def create
    @fonasa_mle = FonasaMle.new(params[:fonasa_mle])
    if @fonasa_mle.save
      flash[:notice] = "Successfully created fonasa mle."
      redirect_to @fonasa_mle
    else
      render :action => 'new'
    end
  end

  def edit
    @fonasa_mle = FonasaMle.find(params[:id])
  end

  def update
    @fonasa_mle = FonasaMle.find(params[:id])
    if @fonasa_mle.update_attributes(params[:fonasa_mle])
      flash[:notice] = "Successfully updated fonasa mle."
      redirect_to @fonasa_mle
    else
      render :action => 'edit'
    end
  end

  def destroy
    @fonasa_mle = FonasaMle.find(params[:id])
    @fonasa_mle.destroy
    flash[:notice] = "Successfully destroyed fonasa mle."
    redirect_to fonasa_mles_url
  end
end

