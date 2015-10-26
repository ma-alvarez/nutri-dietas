ActiveAdmin.register User, as: "Dietas" do
  config.clear_action_items!
  controller do
    def permitted_params
      params.permit! # allow all parameters
    end
  end

  index do
    id_column
    column :name
    column :last_name
    column :email
    column :social_security
  end

 show do
    panel "Detalles de la Dieta" do
      attributes_table_for dietas.diet do
        row :fecal_incontinence
        row :hemacromotosis
        row :celiac
        row :irritable_colon
        row :pregnancy
        row :ovolact
        row :kosher
        row :without_fibers
        row :allowed_foods
      end
    end

    panel "Desayuno" do
      attributes_table_for dietas.diet do
        row :breakfast_fruits
        row :breakfast_lacteals
        row :breakfast_starch
     end
    end

    panel "Colación" do
      attributes_table_for dietas.diet do
        row :collation_fruits
        row :collation_lacteals
        row :collation_starch
     end
    end

    panel "Almuerzo" do
      attributes_table_for dietas.diet do
        row :lunch_starch
        row :lunch_vegetables
        row :luch_fats
        row :lunch_fruits
        row :lunch_lacteals
        row :lunch_meats
     end
    end

    panel "Merienda" do
      attributes_table_for dietas.diet do
        row :merienda_fruits
        row :merienda_lacteals
        row :merienda_starch
     end
    end

    panel "Cena" do
      attributes_table_for dietas.diet do
        row :dinner_starch
        row :dinner_vegetables
        row :dinner_fats
        row :dinner_fruits
        row :dinner_lacteals
        row :dinner_meats
     end
    end

  end

  filter :name
  filter :last_name
  filter :email
  filter :social_security, as: :select, collection: User::SOCIAL_SECURITY_TYPES
  filter :sex, as: :select, collection: User::SEX
  filter :cellphone

end