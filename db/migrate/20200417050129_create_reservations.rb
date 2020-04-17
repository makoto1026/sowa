class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime   :datetime, null: false
      t.string     :place,    null: false
      t.references :user,     null: false, foreign_kye: true
      t.integer    :taxi_id,  null: false, foreign_kye: true, index: true
      t.timestamps
    end
  end
end
