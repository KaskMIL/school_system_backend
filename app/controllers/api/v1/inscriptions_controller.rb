class Api::V1::InscriptionsController < ApplicationController
  def index
    @inscriptions = Inscription.all

    render json: @inscriptions
  end

  def show
    @inscription = Inscription.find(params[:id])

    render json: @inscription
  end

  def create
    @inscription = Inscription.new(inscription_params)

    if @inscription.save
      render json: { msg: 'Inscripcion creado con exito!', inscription: @inscription }
    else
      render json: { error: 'No se ha podido crear la inscripcion, revise los parametros!' }
    end
  end

  def destroy
    @inscription = Inscription.find(params[:id])
    if @inscription.destroy
      render json: { msg: 'La inscripcion se ha eliminado con exito!' }
    else
      render json: { error: 'La inscripcion no se ha eliminado de la base de datos.' }
    end
  end

  private

  def inscription_params
    params.require(:inscription).permit(:curso, :alumno)
  end
end
