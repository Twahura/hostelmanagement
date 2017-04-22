class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.belongs_to :hostel, foreign_key: true
      t.string :manager_name
      t.string :manager_address
      t.string :manager_phone_no
      t.date :Join_date

      t.timestamps
    end
  end
end
