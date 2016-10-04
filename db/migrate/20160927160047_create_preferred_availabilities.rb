class CreatePreferredAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :preferred_availabilities do |t|
      t.references :availability
      t.references :volunteer

      t.timestamps
    end
  end
end
