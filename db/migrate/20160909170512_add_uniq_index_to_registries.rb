class AddUniqIndexToRegistries < ActiveRecord::Migration[5.0]
  def change
    add_index :registries, [:name, :location], :unique => true
  end
end
