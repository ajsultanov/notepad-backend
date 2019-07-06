class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text :content
      t.string :title
      t.integer :time
      t.string :season
      t.float :lat, :precision => 7, :scale => 4
      t.float :lng, :precision => 7, :scale => 4
      t.integer :user_id

      t.timestamps
    end
  end
end
