class Api::V1::FamiliesController < ApplicationController
  def index
    @families = Family.all

    render json: @families
  end

  def show
    @family = Alumno.all.where(family_id: params[:id])

    render json: @family
  end

  def create
    @family = Family.new(family_params)

    if @family.save
      render json: { msg: 'Familia creada con exito!', familia: @family, status: 200 }
    else
      render json: { error: 'No se ha podido crear la familia, revise los parametros!' }
    end
  end

  def destroy
    @family = Family.find(params[:id])
    if @family.destroy
      render json: { msg: 'La familia se ha eliminado con exito!' }
    else
      render json: { error: 'La familia no se ha eliminado de la base de datos.' }
    end
  end

  private

  def family_params
    params.require(:familia).permit(:apellido)
  end
end
