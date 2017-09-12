class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :rank
      t.boolean :completed
      t.boolean :visible
      t.boolean :starred
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
