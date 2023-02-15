class Api::V1::FamiliesController < ApplicationController
  def index
    @families = Family.all

    render json: @families
  end

  def show
    @family = Alumno.all.where(family_id: params[:id])

    render json: @family
  end
end
