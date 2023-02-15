class Api::V1::InscriptionsController < ApplicationController
  def index
    @inscriptions = Inscription.all

    render json: @inscriptions
  end

  def show
    @inscription = Inscription.find(params[:id])

    render json: @inscription
  end
end
