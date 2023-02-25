class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :station_name
      t.integer :minutes

      t.timestamps
    end
  end
end
