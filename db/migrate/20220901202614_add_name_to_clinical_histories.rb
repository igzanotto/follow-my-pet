class AddNameToClinicalHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :clinical_histories, :name, :string
    add_column :clinical_histories, :type_of_history, :string
  end
end
