class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.belongs_to :hostel, foreign_key: true

      t.timestamps
    end
  end
end
