class AddDateToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :start_date, :date
    add_column :games, :end_date, :date
  end
end
