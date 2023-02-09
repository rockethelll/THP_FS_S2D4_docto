class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.belongs_to :city
      t.belongs_to :join_table_doctor_specialty

      t.timestamps
    end
  end
end
