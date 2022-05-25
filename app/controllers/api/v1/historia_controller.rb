class Api::V1::HistoriaController < ApplicationController
  before_action :set_historium, only: %i[ show update destroy ]

  # GET /historia
  # GET /historia.json
  def index
    @historia = Historium.all
    #resources :historia  render json: @historia
  end

  # GET /historia/1
  # GET /historia/1.json
  def show
    render json: @historia
  end

  # POST /historia
  # POST /historia.json
  def create
    @historium = Historium.new(historium_params)

    if @historium.save
      render :show, status: :created
    else
      render json: @historium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /historia/1
  # PATCH/PUT /historia/1.json
  def update
    if @historium.update(historium_params)
      render :show, status: :ok, location: @historium
    else
      render json: @historium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /historia/1
  # DELETE /historia/1.json
  def destroy
    @historium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historium
      @historium = Historium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historium_params
      params.require(:historium).permit(:numeroDocumento, :enfermedades, :medicamentos, :cirugias, :antecedentes, :resultados)
    end
end
