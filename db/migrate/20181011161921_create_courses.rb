class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :key_code
      t.integer :difficulty
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
