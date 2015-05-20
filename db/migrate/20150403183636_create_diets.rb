class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.boolean :fecal_incontinence
      t.boolean :hemacromotosis
      t.boolean :celiac
      t.boolean :irritable_colon
      t.boolean :pregnancy
      t.boolean :ovolact
      t.boolean :kosher
      t.boolean :without_fibers
      t.boolean :allowed_foods
      t.integer :breakfast_fruits
      t.integer :breakfast_lacteals
      t.integer :breakfast_starch
      t.integer :collation_fruits
      t.integer :collation_lacteals
      t.integer :collation_starch
      t.integer :lunch_starch
      t.integer :lunch_vegetables
      t.integer :luch_fats
      t.integer :lunch_fruits
      t.integer :lunch_lacteals
      t.integer :lunch_meats
      t.integer :dinner_starch
      t.integer :dinner_vegetables
      t.integer :dinner_fats
      t.integer :dinner_fruits
      t.integer :dinner_lacteals
      t.integer :dinner_meats
      t.integer :merienda_fruits
      t.integer :merienda_lacteals
      t.integer :merienda_starch
      t.integer :user_id

      t.timestamps
    end
  end
end
