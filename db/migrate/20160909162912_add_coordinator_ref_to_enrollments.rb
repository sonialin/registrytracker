class AddCoordinatorRefToEnrollments < ActiveRecord::Migration[5.0]
  def change
    add_reference :enrollments, :coordinator, foreign_key: true
  end
end
