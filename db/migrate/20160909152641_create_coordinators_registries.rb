class CreateCoordinatorsRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :coordinators_registries, :id => false do |t|
      t.references :coordinator
      t.references :registry
    end
    add_index :coordinators_registries, [:coordinator_id, :registry_id], name: :idx_crjoin_on_coord_id_and_reg_id, :unique => true
  end
end
