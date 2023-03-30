class Api::V1::ConceptsController < ApplicationController
  def index
    @concepts = Concept.all
    render json: @concepts
  end

  def show
    @concept = Concept.find(params[:id])
    @payments = @concept.payments
    render json: { concept: @concept, payments: @payments }
  end

  def create
    @concept = Concept.new(concept_params)

    if @concept.save
      render json: { msg: 'Concepto creado con exito!', concept: @concept }
    else
      render json: { error: 'No se ha podido crear el concepto, revise los parametros!' }
    end
  end

  def destroy
    @concept = Concept.find(params[:id])
    if @concept.destroy
      render json: { msg: 'El concepto se ha eliminado con exito!' }
    else
      render json: { error: 'El concepto no se ha eliminado de la base de datos.' }
    end
  end

  private

  def concept_params
    params.require(:concept).permit(:nombre, :precio, :saldado, :year)
  end
end
