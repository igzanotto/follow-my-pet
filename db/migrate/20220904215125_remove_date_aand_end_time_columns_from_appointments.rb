class RemoveDateAandEndTimeColumnsFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :date
  end
end
