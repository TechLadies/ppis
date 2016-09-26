class CreateFormalEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :formal_educations do |t|
      t.string :name

      t.timestamps
    end
  end
end
