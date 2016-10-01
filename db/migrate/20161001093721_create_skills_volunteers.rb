class CreateSkillsVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_volunteers do |t|
      t.references :skill
      t.references :volunteer
      
      t.timestamps
    end
  end
end
