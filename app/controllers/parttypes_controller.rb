class ParttypesController < ApplicationController
  before_action :set_parttype, only: [:show, :update, :destroy]

  # GET /parttypes
  def index
    @parttypes = Parttype.all

    render json: @parttypes
  end

  # GET /parttypes/1
  def show
    render json: @parttype
  end

  # POST /parttypes
  def create
    @parttype = Parttype.new(parttype_params)

    if @parttype.save
      render json: @parttype, status: :created, location: @parttype
    else
      render json: @parttype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parttypes/1
  def update
    if @parttype.update(parttype_params)
      render json: @parttype
    else
      render json: @parttype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parttypes/1
  def destroy
    @parttype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parttype
      @parttype = Parttype.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parttype_params
      params.require(:parttype).permit(:parttype, :description)
    end
end
