class CreateWaterLevels < ActiveRecord::Migration
  def change
    create_table :water_levels do |t|
      t.date :dt
      t.time :hour
      t.float :level

    end
  end
end
