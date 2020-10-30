class NationalsController < ApplicationController

  def index
    @nationals = National.all
    json_response(@nationals)
  end

  def show
    @national = National.find(params[:id])
    json_response(@national)
  end

  def create
    @national = National.create(national_params)
    json_response(@national)
  end

  def update
    @national = National.find(params[:id])
    @national.update(national_params)
  end

  def destroy
    @national = National.find(params[:id])
    @national.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def national_params
    params.permit(:national_park, :state)
  end
end