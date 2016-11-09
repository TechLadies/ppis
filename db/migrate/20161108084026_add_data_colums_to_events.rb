class AddDataColumsToEvents < ActiveRecord::Migration[5.0]
  def change
      add_column :events, :center_id, :integer
      add_column :events, :event_name, :string
      add_column :events, :number_of_volunteers, :integer
      add_column :events, :location, :text
      add_column :events, :description, :text
      add_column :events, :date, :date
      add_column :events, :start_time, :time
      add_column :events, :end_time, :time

  end
end
