class AddNoteIdToWeathers < ActiveRecord::Migration[5.2]
  def change
    add_column :weathers, :note_id, :integer
  end
end
