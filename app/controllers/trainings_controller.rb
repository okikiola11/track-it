# Trainings controller
class TrainingsController < ApplicationController
  include CurrentUserConcern
  def index
    if check_logged_in
      @trainings = Training.where(user_id: logged_in_user.id)
      render json: { status: :ok, data: @trainings }
    else
      render json: { message: 'Not authorized!' }
    end
  end

  def create
    if check_logged_in
      @training = logged_in_user.trainings.build(training_params)
      if @training.save
        render json: { status: :created, data: @training }
      else
        render json: { status: 500, errors: @training.errors.full_messages }
      end
    else
      render json: { message: 'Not authorized!' }
    end
  end

  def show
    if check_logged_in
      @training = Training.find(params[:id])
      @measures = @training.measures unless @training.measures.empty?
      render json: { data: @training, measures: @measures }
    else
      render json: { message: 'Please login first!' }
    end
  end

  private

  def training_params
    params.require(:training).permit(:name)
  end
end
