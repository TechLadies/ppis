class CreateCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :manager_name
      t.string :email
      t.string :contact_number
      t.string :address

      t.timestamps
    end
  end
end
