class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :social_security_id

      t.timestamps
    end
  end
end
