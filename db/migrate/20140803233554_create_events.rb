class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.float :latitude
      t.float :longitude
      t.string :status
      t.datetime :event_date

      t.timestamps
    end
  end
end
