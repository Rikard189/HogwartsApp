class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :address
      t.integer :postal_code

      t.timestamps
    end
  end
end
