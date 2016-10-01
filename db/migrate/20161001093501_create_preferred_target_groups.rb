class CreatePreferredTargetGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :preferred_target_groups do |t|
      t.references :target_group, foreign_key: true
      t.references :volunteer, foreign_key: false

      t.timestamps
    end
  end
end
