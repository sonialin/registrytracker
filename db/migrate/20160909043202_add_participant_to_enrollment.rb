class AddParticipantToEnrollment < ActiveRecord::Migration[5.0]
  def change
    add_reference :enrollments, :participant, foreign_key: true
  end
end
