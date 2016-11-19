class AddStateToVolunteerEvents < ActiveRecord::Migration
  def change
    add_column :volunteer_events, :state, :string, default: 'created'
  end
end
