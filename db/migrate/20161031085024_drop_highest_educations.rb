class DropHighestEducations < ActiveRecord::Migration[5.0]
  def change
    drop_table :highest_educations
  end
end
