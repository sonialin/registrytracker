class RegistriesController < ApplicationController
  
  def index
    @title = "List of All Registries"
    @registries = Registry.all
  end

  def new
    @title = "New Registry"
    @registry = Registry.new
  end

  def create
    @registry = Registry.new(registry_params)
    @registry.coordinators << @current_user
    @registry.save
    redirect_to registries_path
  end

  def show
    @registry = Registry.find(params[:id])
    @participants = Participant.find_by_sql(["SELECT participants.name, participants.gender, participants.birthday, participants.id
                                              FROM participants
                                              INNER JOIN enrollments
                                              ON participants.id=enrollments.participant_id
                                              INNER JOIN coordinators
                                              ON coordinators.id=enrollments.coordinator_id
                                              WHERE registry_id=?
                                              ORDER BY coordinators.name", @registry.id])
    @enrollment = Enrollment.new
    @unenrolled_participants = Participant.where.not(id: @participants.pluck(:id))
  end

  def edit
    @registry = Registry.find(params[:id])
  end

  def update
    @registry = Registry.find(params[:id])
    if @registry.update(registry_params)
      redirect_to registries_path
    else
      render 'edit'
    end
  end

  private
    def registry_params
      params.require(:registry).permit(:name, :location, :is_open)
    end

end
