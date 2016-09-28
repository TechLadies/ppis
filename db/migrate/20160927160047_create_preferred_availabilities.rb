class CreatePreferredAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :preferred_availabilities do |t|
      t.integer :availability_id
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
