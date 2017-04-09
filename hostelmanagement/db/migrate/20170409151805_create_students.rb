class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.belongs_to :seat, foreign_key: true
      t.string :Student_name
      t.string :Institute
      t.string :Year
      t.string :Student_phone_no
      t.string :Address
      t.string :Guardians_name
      t.string :Guardians_phone_no
      t.date :Rent_date

      t.timestamps
    end
  end
end
