class CreateHostels < ActiveRecord::Migration[5.0]
  def change
    create_table :hostels do |t|
      t.string :hostel_name
      t.string :hostel_address

      t.timestamps
    end
  end
end
