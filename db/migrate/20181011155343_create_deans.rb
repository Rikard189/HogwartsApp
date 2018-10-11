class CreateDeans < ActiveRecord::Migration[5.2]
  def change
    create_table :deans do |t|
      t.string :names
      t.string :surnames
      t.decimal :salary
      t.date :birthday
      t.boolean :float
      t.references :college, foreign_key: true

      t.timestamps
    end
  end
end
