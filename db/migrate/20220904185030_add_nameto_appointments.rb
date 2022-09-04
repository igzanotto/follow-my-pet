class AddNametoAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :name, :string
  end
end
