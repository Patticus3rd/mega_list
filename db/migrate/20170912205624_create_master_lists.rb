class CreateMasterLists < ActiveRecord::Migration[5.1]
  def change
    create_table :master_lists do |t|
      t.string :listname
      t.integer :rank

      t.timestamps
    end
  end
end
