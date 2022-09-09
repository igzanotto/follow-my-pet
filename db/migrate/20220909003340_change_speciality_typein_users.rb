class ChangeSpecialityTypeinUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :speciality, "varchar[] USING speciality::text[]"
  end
end
