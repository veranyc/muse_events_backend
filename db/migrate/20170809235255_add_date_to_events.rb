class AddDateToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :date, :date
  end
end
