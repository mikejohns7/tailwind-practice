class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :notes
      t.boolean :complete
      t.integer :priority
      t.date :target_date
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
