class CreateEventJobRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :event_job_requirements do |t|
      t.references :event
      t.string :job_title
      t.integer :number_of_volunteers
      t.text :description

      t.timestamps
    end
  end
end
