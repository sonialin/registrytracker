class AddIsOpenToRegistries < ActiveRecord::Migration[5.0]
  def change
    add_column :registries, :is_open, :boolean, :default => true
  end
end
