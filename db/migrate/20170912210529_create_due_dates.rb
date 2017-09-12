class CreateDueDates < ActiveRecord::Migration[5.1]
  def change
    create_table :due_dates do |t|
      t.datetime :date
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
