class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :update, :destroy]
  before_action :validate_user
  # GET /repairs
  def index
    @repairs = current_user.repairs.all

    render json: @repairs
  end

  # GET /repairs/1
  def show
    render json: @repair
  end

  # POST /repairs
  def create
    @repair = current_user.repairs.build(repair_params)

    if @repair.save
      render json: @repair, status: :created, location: @repair
    else
      render json: @repair.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repairs/1
  def update
    if @repair.update(repair_params)
      render json: @repair
    else
      render json: @repair.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repairs/1
  def destroy
    @repair.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = current_user.repairs.find(params[:id])
    end

    def validate_user
      set_current_user
    end

    # Only allow a trusted parameter "white list" through.
    def repair_params
      params.require(:repair).permit(:year, :make, :model, :repairname, :repaircost)
    end
end
