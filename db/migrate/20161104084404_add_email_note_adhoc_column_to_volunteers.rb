class AddEmailNoteAdhocColumnToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :emailNotification, :boolean, default: true
    add_column :volunteers, :adhoc, :boolean 
  end
end
