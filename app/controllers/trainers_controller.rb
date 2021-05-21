class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :update, :edit, :destroy]

  def index
    @trainers = Trainer.all
    render component: "Trainers", props: {trainers: @trainers}
  end

  def show
    render component: "Trainer", props: {trainer: @trainer}
  end

  def new
    render component: "TrainerNew"
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if(@trainer.save)
      redirect_to #need to fill out still
    end
  end

  def edit
    render component: "TrainerEdit", props: {trainer: @trainer}
  end

  def update
    if @trainer.update(trainer_params)
      redirect_to #need to fill out where to redirect
    else 
    end
  end

  def destroy
    @trainer.destroy
    redirect_to #need to fill out where
  end

  private

  def set_trainer
    @trainer = Trainer.find(params[:id])
  end

  def trainer_params
    params.require(:trainer).permit(:name, :location)
  end

end
