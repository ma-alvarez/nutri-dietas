class AddDietTypes < ActiveRecord::Migration
   def change
  	add_column :diets, :menu, :boolean
  	add_column :diets, :celiac_menu, :boolean
  	add_column :diets, :infant_menu, :boolean
  	add_column :diets, :ovolact_menu, :boolean
  	add_column :diets, :gastrointestinal_menu, :boolean
  	add_column :diets, :uric_acid_gout, :boolean
  	add_column :diets, :gas_forming_foods, :boolean
  	add_column :diets, :anemia, :boolean
  	add_column :diets, :anticoagulantes, :boolean
  	add_column :diets, :sports_drink, :boolean
  	add_column :diets, :soft_mechanics, :boolean
  	add_column :diets, :cholesterol, :boolean
  	add_column :diets, :breakfast_snacks, :boolean
  	add_column :diets, :diarrhea, :boolean
  	add_column :diets, :diverticulosis, :boolean
  	add_column :diets, :gastritis, :boolean
  	add_column :diets, :hypertension, :boolean
  	add_column :diets, :glycemic_index, :boolean
  	add_column :diets, :osteoporosis, :boolean
  	add_column :diets, :hyperproteic_first_second, :boolean
  	add_column :diets, :hyperproteic_third, :boolean
  	add_column :diets, :hyperproteic_fourth, :boolean
  	add_column :diets, :fruits_vegetables, :boolean
  	add_column :diets, :hc_reduced_plan, :boolean
  	add_column :diets, :cow_proteins, :boolean
  	add_column :diets, :reflux, :boolean
  	add_column :diets, :renal, :boolean
  	add_column :diets, :monohydrate_creatine_sup, :boolean
  	add_column :diets, :vomiting, :boolean
  	
  end
end
