class CreateHostels < ActiveRecord::Migration[5.0]
  def change
    create_table :hostels do |t|
      t.string :Hostel_name
      t.string :Hostel_address

      t.timestamps
    end
  end
end
