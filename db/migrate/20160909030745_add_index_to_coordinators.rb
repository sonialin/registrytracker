class AddIndexToCoordinators < ActiveRecord::Migration[5.0]
  def change
    add_column :coordinators, :email, :string
    add_index :coordinators, :email, unique: true
  end
end
