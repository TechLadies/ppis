class CreateCertificationsVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :certifications_volunteers do |t|
      t.references :certification, foreign_key: true
      t.references :volunteer, foreign_key: true

      t.timestamps
    end
  end
end
