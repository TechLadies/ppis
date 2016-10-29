class ChangeVolunteerGenderFromBooleanToInteger < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :gender_temp, :integer, default: 1

    Volunteer.all.each do |volunteer|
      gender = volunteer.gender ? 1 : 0
      volunteer.update_attributes(gender_temp: gender)
    end

    remove_column :volunteers, :gender
    rename_column :volunteers, :gender_temp, :gender
  end
end
