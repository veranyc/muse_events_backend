class CreateSetlistSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :setlist_songs do |t|
      t.references :song
      t.references :setlist
      t.timestamps
    end
  end
end
