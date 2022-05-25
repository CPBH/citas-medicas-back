class Api::V1::ConsultaController < ApplicationController
  before_action :set_consultum, only: %i[ show update destroy ]

  # GET /consulta
  # GET /consulta.json
  def index
    @consulta = Consultum.all
  end

  # GET /consulta/1
  # GET /consulta/1.json
  def show
  end

  # POST /consulta
  # POST /consulta.json
  def create
    @consultum = Consultum.new(consultum_params)

    if @consultum.save
      render :show, status: :created, location: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consulta/1
  # PATCH/PUT /consulta/1.json
  def update
    if @consultum.update(consultum_params)
      render :show, status: :ok, location: @consultum
    else
      render json: @consultum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.json
  def destroy
    @consultum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultum_params
      params.require(:consultum).permit(:numeroDocumento, :enfermedades, :cirugias, :medicamentos)
    end
end
