class CreateSetlists < ActiveRecord::Migration[5.1]
  def change
    create_table :setlists do |t|
      t.references :event
      t.timestamps
    end
  end
end
