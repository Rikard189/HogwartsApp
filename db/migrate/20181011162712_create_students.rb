class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :names
      t.string :surnames
      t.string :enrollment
      t.string :house
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
