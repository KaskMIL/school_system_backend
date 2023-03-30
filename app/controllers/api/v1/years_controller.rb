class Api::V1::YearsController < ApplicationController
  def index
    @years = Year.all
    render json: @years
  end

  def show
    @year = Year.find_by(alumno_id: params[:id])
    @alumno = @year.alumno
    render json: { year: @year, alumno: @alumno }
  end

  def create
    @year = Year.new(year_params)

    if @year.save
      render json: { msg: 'El año se ha creado con exito!', year: @year }
    else
      render json: { error: 'El año no se ha podido crear,revise los parametros!' }
    end
  end

  def destroy
    @year = Year.find(params[:id])
    if @year.destroy
      render json: { msg: 'El año se ha eliminado con exito!' }
    else
      render json: { error: 'El año no se ha eliminado de la base de datos.' }
    end
  end

  private

  def year_params
    params.require(:year).permit(:year, :alumno)
  end
end
