class CreateEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :enrollments do |t|
      t.datetime :date_of_enrollment
      t.string :contact
      t.string :remarks

      t.timestamps
    end
  end
end
