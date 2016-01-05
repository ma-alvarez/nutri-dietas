class CreateSocialSecurities < ActiveRecord::Migration
  def change
    create_table :social_securities do |t|
      t.string :name

      t.timestamps
    end
  end
end
