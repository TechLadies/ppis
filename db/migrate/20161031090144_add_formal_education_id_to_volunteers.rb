class AddFormalEducationIdToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_reference :volunteers, :formal_education, foreign_key: true         
  end
end
