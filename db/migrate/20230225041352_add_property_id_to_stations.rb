class AddPropertyIdToStations < ActiveRecord::Migration[6.0]
  def change
    add_column :stations, :property_id, :integer
  end
end
