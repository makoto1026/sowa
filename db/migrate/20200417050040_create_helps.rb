class CreateHelps < ActiveRecord::Migration[5.2]
  def change
    create_table :helps do |t|
      t.datetime   :datetime,    null: false
      t.string     :place,       null: false
      t.string     :helpContent, null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
