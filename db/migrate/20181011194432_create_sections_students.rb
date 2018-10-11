class CreateSectionsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :sections_students do |t|
      t.references :student, foreign_key: true
      t.references :section, foreign_key: true
    end
  end
end
