class CreatePreferredCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :preferred_centers do |t|
      t.references :center
      t.references :volunteer
      t.timestamps
    end
  end
end
