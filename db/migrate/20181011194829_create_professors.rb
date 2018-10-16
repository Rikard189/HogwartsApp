class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :names
      t.string :surnames
      t.decimal :salary
      t.string :academic_degree
      t.boolean :buena_onda
      t.boolean :is_chavorruco
      t.references :department, foreign_key: true
      t.timestamps
    end
  end
end
