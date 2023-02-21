class PetsController < ApplicationController
  before_action: :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    # raise
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    # raise
    @pet = Pet.new(pet_params)
    # raise
    @pet.save
    redirect_to pet_path(@pet)
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :specie, :date_found)
  end
end
