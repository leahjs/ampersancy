class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :ampersand
      t.string :weekday
      t.integer :date
      t.string :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
