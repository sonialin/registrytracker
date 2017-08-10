class CoordinatorsController < ApplicationController
  def index
    @title = 'List of Coordinators'
    @coordinators = Coordinator.all
  end

  def show
    @coordinator = Coordinator.find(params[:id])
    @registries = @coordinator.registries
  end

  def edit
    @coordinator = Coordinator.find(params[:id])
  end

  def update
    @coordinator = Coordinator.find(params[:id])

    if @coordinator.update(coordinator_params)
      @coordinator.registries.build
      redirect_to @coordinator
    else
      render 'edit'
    end
  end

  private
    def coordinator_params
      params.require(:coordinator).permit(:phone_number, registry_ids: [])
    end
end
