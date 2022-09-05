class AddStartAndEndDateToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :start_datetime, :datetime
    add_column :appointments, :end_datetime, :datetime
  end
end
