class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :description
      t.references :professor, foreign_key: true
      t.references :college, foreign_key: true
      t.timestamps
    end
  end
end
