class CreateWeathers < ActiveRecord::Migration[5.2]
  def change
    create_table :weathers do |t|
      t.integer :temp
      t.string :precip
      t.string :moon
      t.string :clouds
      t.integer :note_id

      t.timestamps
    end
  end
end
