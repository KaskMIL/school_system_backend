class Api::V1::PaymentsController < ApplicationController
  def index
    @payments = Payment.all
    render json: @payments
  end

  def show
    @payment = Payment.find(params[:id])
    @concept = @payment.concept
    render json: { payment: @payment, concept: @concept }
  end

  def create
    puts payment_params
    @payment = Payment.new(payment_params)

    if @payment.save
      render json: { msg: 'El pago ha sido creado con exito!', payment: @payment }
    else
      render json: { error: 'No se ha podido crear el pago, revise los parametros!' }
    end
  end

  def destroy
    @payment = Payment.find(params[:id])
    if @payment.destroy
      render json: { msg: 'El pago se ha eliminado con exito!' }
    else
      render json: { error: 'El pago no se ha eliminado de la base de datos.' }
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:monto, :alumno_id, :concept_id)
  end
end
