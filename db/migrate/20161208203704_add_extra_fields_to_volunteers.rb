class AddExtraFieldsToVolunteers < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :nric_no, :string
    add_column :volunteers, :marital_status, :integer
    add_column :volunteers, :address, :text
    add_column :volunteers, :home_phone_number, :integer
    add_column :volunteers, :language_spoken, :string
    add_column :volunteers, :past_experience, :text
  end
end
