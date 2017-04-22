class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.belongs_to :student, foreign_key: true
      t.integer :Paid_amount
      t.date :Payment_date

      t.timestamps
    end
  end
end
