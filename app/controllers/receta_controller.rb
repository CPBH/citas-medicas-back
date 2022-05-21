class RecetaController < ApplicationController
  before_action :set_recetum, only: %i[ show update destroy ]

  # GET /receta
  # GET /receta.json
  def index
    @receta = Recetum.all
  end

  # GET /receta/1
  # GET /receta/1.json
  def show
  end

  # POST /receta
  # POST /receta.json
  def create
    @recetum = Recetum.new(recetum_params)

    if @recetum.save
      render :show, status: :created, location: @recetum
    else
      render json: @recetum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receta/1
  # PATCH/PUT /receta/1.json
  def update
    if @recetum.update(recetum_params)
      render :show, status: :ok, location: @recetum
    else
      render json: @recetum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receta/1
  # DELETE /receta/1.json
  def destroy
    @recetum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recetum
      @recetum = Recetum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recetum_params
      params.require(:recetum).permit(:dosis, :fecha-vencimiento, :entregaxmes, :medicamentos, :descripcion_tratamiento)
    end
end
