class ParticipantsController < ApplicationController
  
  def index
    @title = "List of Participants"
    @participants = Participant.all
  end

  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])
    if @participant.update(participant_params)
      redirect_to @participant
    else
      render 'edit'
    end
  end

  def show
    @participant = Participant.find(params[:id])
  end

  private
    def participant_params
      params.require(:participant).permit(:name, :gender, :birthday)
    end

end
