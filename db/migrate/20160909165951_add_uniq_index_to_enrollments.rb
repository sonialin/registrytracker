class AddUniqIndexToEnrollments < ActiveRecord::Migration[5.0]
  def change
    add_index :enrollments, [:participant_id, :registry_id], :unique => true
  end
end
