class OrdensController < ApplicationController
  before_action :set_orden, only: %i[ show update destroy ]

  # GET /ordens
  # GET /ordens.json
  def index
    @ordens = Orden.all
  end

  # GET /ordens/1
  # GET /ordens/1.json
  def show
  end

  # POST /ordens
  # POST /ordens.json
  def create
    @orden = Orden.new(orden_params)
    Historia.medicamentos=Historia.medicamentos + @orden.descripcion

    if @orden.save
      render :show, status: :created, location: @orden
    else
      render json: @orden.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ordens/1
  # PATCH/PUT /ordens/1.json
  def update
    if @orden.update(orden_params)
      render :show, status: :ok, location: @orden
    else
      render json: @orden.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ordens/1
  # DELETE /ordens/1.json
  def destroy
    @orden.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden
      @orden = Orden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_params
      params.require(:orden).permit(:descripcion, :margen_de_tiempo)
    end
end
