class ChangeIntegerLimitInVolunteers < ActiveRecord::Migration[5.0]
  def change
    change_column :volunteers, :mobile, :integer, limit: 8
    change_column :volunteers, :home_phone_number, :integer, limit: 8
  end
end
