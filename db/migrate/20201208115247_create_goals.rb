class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :counter, default: 0
      t.integer :target
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
