class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :artists
      t.string :venue
      t.string :city
      t.string :state
      t.string :country
      t.string :notes
      t.references :user

      t.timestamps
    end
  end
end
