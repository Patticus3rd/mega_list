class CreateSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :subtasks do |t|
      t.string :name
      t.integer :rank
      t.boolean :completed
      t.boolean :visible
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
