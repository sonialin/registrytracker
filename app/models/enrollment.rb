class Enrollment < ApplicationRecord
  belongs_to :participant
  belongs_to :registry
  belongs_to :coordinator

  def date_of_enrollment_short
    self.date_of_enrollment.strftime('%x')
  end
end
