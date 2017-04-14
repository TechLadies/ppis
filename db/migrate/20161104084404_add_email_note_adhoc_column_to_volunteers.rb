class AddEmailNoteAdhocColumnToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :email_notification, :boolean, default: true
    add_column :volunteers, :adhoc, :boolean , default: true
  end
end
