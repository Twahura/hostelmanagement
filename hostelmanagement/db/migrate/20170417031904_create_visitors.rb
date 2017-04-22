class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.belongs_to :student, foreign_key: true
      t.string :Visitor_name
      t.date :Visiting_date
      t.string :Relation
      t.string :Visitor_address

      t.timestamps
    end
  end
end
