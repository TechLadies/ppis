class AddDeletedAtColumnToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :deleted_at, :datetime
  end
end
