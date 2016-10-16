class CreateHighestEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :highest_educations do |t|
      t.references :volunteer
      t.references :formal_education
      t.timestamps
    end
  end
end
