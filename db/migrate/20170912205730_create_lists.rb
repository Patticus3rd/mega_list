class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :rank
      t.belongs_to :master_list, foreign_key: true

      t.timestamps
    end
  end
end
