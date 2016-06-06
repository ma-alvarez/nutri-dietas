class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :date
      t.decimal :weight
      t.decimal :waist
      t.decimal :hip
      t.decimal :leg
      t.decimal :fat
      t.integer :user_id

      t.timestamps
    end
  end
end
