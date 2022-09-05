class ChangeStartTimeNameToAppointments < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :start_datetime, :start_time
    rename_column :appointments, :end_datetime, :end_time
  end
end
