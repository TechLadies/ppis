class AddCenterReferenceToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_reference :admins, :center, foreign_key: true
  end
end
