class AddFaxNumberToCenter < ActiveRecord::Migration[5.0]
  def change
    add_column :centers, :fax_number, :string
  end
end
