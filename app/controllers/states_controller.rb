class StatesController < ApplicationController

  def index
    @states = State.paginate(page: params[:page], :per_page => 5)
    json_response(@states)
  end

  def show
    @state = State.find(params[:id])
    json_response(@state)
  end

  def create
    @state = State.create!(state_params)
    json_response(@state, :created)
  end

  def update
    @state = State.find(params[:id])
    if @state.update!(state_params)
      render status: 200, json: {
      message: "This state park has been updated successfully."
      }
    end
  end

  def destroy
    @state = State.find(params[:id])
    if @state.destroy
      render status: 200, json: {
      message: "This state park has been destroyed successfully."
      }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def state_params
    params.permit(:state_park)
  end
end