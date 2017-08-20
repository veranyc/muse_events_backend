class AddSetlistToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :slfm_setlist, :string
  end
end
