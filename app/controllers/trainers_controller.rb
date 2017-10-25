class TrainersController < ApplicationController
  before_action :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemon = Pokemon.where(trainer_id: @trainer.id)
  end

  def damage
  		@pokemon = Pokemon.find(params[:id])
  		@pokemon.health -= 10
  		if @pokemon.health <= 0
  			@pokemon.destroy
  		else
  			@pokemon.save
  		end
  		redirect_to trainer_path(id: @pokemon.trainer_id)
  end
end
