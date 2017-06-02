class RigsController < ApplicationController
  before_action :set_rig, only: [:show, :update, :destroy]

  # GET /rigs
  def index
    @rigs = Rig.all

    render json: @rigs
  end

  # GET /rigs/1
  def show
    render json: @rig
  end

  # POST /rigs
  def create
    @rig = Rig.new(rig_params)

    if @rig.save
      render json: @rig, status: :created, location: @rig
    else
      render json: @rig.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rigs/1
  def update
    if @rig.update(rig_params)
      render json: @rig
    else
      render json: @rig.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rigs/1
  def destroy
    @rig.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rig
      @rig = Rig.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rig_params
      params.require(:rig).permit(:description, :user_id)
    end
end
