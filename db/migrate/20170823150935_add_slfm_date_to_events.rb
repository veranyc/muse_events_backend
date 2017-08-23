class AddSlfmDateToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :slfm_date, :string
  end
end
