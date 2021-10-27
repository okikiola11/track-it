# Measures controller
class MeasuresController < ApplicationController
  include CurrentUserConcern
  def create
    if check_logged_in
      @measure = logged_in_user.measures.build(measure_params)
      if @measure.save
        render json: { status: :created, data: @measure }
      else
        render json: { status: 500, errors: @measure.errors.full_messages }
      end
    end
  end

  private

  def measure_params
    params.require(:measure).permit(:training_id, :count, :time)
  end
end
