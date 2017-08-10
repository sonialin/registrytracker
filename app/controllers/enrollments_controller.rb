class EnrollmentsController < ApplicationController

  def create
    @registry = Registry.find(params[:registry_id])
    @enrollment = Enrollment.new(enrollment_params)
      @enrollment.registry = @registry
      @enrollment.coordinator = @current_user
    
    if !@registry.is_open
      flash[:notice] = 'closed'
      redirect_to @registry
    else 
      
      @enrollment.save

      redirect_to @registry
    end
  end

  private
    def enrollment_params
      params.require(:enrollment).permit(:date_of_enrollment, :contact, :remarks, :participant_id)
    end

end
