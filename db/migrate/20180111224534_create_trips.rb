class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
