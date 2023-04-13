class ChangeDataRentAndYearToProperties < ActiveRecord::Migration[6.0]
  def change
    change_column :properties, :rent, :integer
    change_column :properties, :year, :integer
  end
end