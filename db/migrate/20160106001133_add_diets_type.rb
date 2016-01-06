class AddDietsType < ActiveRecord::Migration
  def change
  	add_column :diets, :hepatic, :boolean
  	add_column :diets, :osteoarthritis, :boolean
  	add_column :diets, :easter, :boolean
  	add_column :diets, :christmas, :boolean
	add_column :diets, :weight_up, :boolean
  end
end
