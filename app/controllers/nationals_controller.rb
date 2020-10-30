class NationalsController < ApplicationController

  def index
    @nationals = National.paginate(page: params[:page], :per_page => 5)
    json_response(@nationals)
  end

  def show
    @national = National.find(params[:id])
    json_response(@national)
  end

  def create
    @national = National.create!(national_params)
    json_response(@national, :created)
  end

  def update
    @national = National.find(params[:id])
    if @national.update!(national_params)
      render status: 200, json: {
       message: "This national park has been updated successfully."
       }
    end
  end

  def destroy
    @national = National.find(params[:id])
    if @national.destroy!
      render status: 200, json: {
       message: "This national park has been destroyed successfully."
       }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def national_params
    params.permit(:national_park, :state)
  end
end