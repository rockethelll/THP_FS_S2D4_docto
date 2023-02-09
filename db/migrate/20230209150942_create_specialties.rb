class CreateSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :specialties do |t|
      t.text :name
      # t.belongs_to :join_table_doctor_specialty, index: true

      t.timestamps
    end
  end
end
