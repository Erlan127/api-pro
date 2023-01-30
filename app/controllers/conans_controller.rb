class ConansController < ApplicationController
  before_action :set_conan, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  # GET /conans
  def index
    @conans = Conan.all

    render json: @conans
  end

  # GET /conans/1
  def show
    render json: @conan
  end

  # POST /conans
  def create
    @conan = Conan.new(conan_params)

    if @conan.save
      render json: @conan, status: :created, location: @conan
    else
      render json: @conan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /conans/1
  def update
    if @conan.update(conan_params)
      render json: @conan
    else
      render json: @conan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conans/1
  def destroy
    @conan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conan
      @conan = Conan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conan_params
      params.require(:conan).permit(:character, :gadget, :vehicle)
    end
end
