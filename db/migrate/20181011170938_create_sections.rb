class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :key_code
      t.string :string
      t.string :description
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
