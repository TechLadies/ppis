class CreateVolunteerEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteer_events do |t|
      t.references :volunteer
      t.references :event

      t.timestamps
    end
  end
end
