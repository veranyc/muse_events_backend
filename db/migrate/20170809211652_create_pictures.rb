class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :caption
      t.string :link
      t.references :event

      t.timestamps
    end
  end
end
