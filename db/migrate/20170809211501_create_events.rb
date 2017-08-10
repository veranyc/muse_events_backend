class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :artist
      t.string :venue
      t.string :city
      t.string :state
      t.string :country
      t.text :notes
      t.references :user
      t.date :date

      t.timestamps
    end
  end
end
