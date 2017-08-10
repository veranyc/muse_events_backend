class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :link
      t.references :artist

      t.timestamps
    end
  end
end
