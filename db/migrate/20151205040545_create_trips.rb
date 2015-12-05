class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :enter_station
      t.string :exit_station
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
