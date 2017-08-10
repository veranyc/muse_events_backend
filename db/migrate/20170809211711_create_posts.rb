class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :type
      t.string :link
      t.references :event

      t.timestamps
    end
  end
end
