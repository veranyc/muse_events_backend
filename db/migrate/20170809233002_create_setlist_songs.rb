class CreateSetlistSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :setlist_songs do |t|
      t.references :songs
      t.references :setlists
      t.timestamps
    end
  end
end
