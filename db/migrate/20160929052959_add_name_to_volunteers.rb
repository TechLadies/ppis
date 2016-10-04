class AddNameToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :name, :string
    add_column :volunteers, :gender, :boolean, default: false
    add_column :volunteers, :date_of_birth, :date
    add_column :volunteers, :mobile, :integer
    add_column :volunteers, :profession, :string
    add_column :volunteers, :other_talents, :text
    add_column :volunteers, :about_me, :text
  end
end
