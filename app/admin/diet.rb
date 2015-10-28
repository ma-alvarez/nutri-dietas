ActiveAdmin.register User, as: "Dieta" do
  # config.clear_action_items!
  actions :index, :show, :update, :edit
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
      attributes_table_for dieta.diet do
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
      attributes_table_for dieta.diet do
        row :breakfast_fruits
        row :breakfast_lacteals
        row :breakfast_starch
     end
    end

    panel "Colación" do
      attributes_table_for dieta.diet do
        row :collation_fruits
        row :collation_lacteals
        row :collation_starch
     end
    end

    panel "Almuerzo" do
      attributes_table_for dieta.diet do
        row :lunch_starch
        row :lunch_vegetables
        row :luch_fats
        row :lunch_fruits
        row :lunch_lacteals
        row :lunch_meats
     end
    end

    panel "Merienda" do
      attributes_table_for dieta.diet do
        row :merienda_fruits
        row :merienda_lacteals
        row :merienda_starch
     end
    end

    panel "Cena" do
      attributes_table_for dieta.diet do
        row :dinner_starch
        row :dinner_vegetables
        row :dinner_fats
        row :dinner_fruits
        row :dinner_lacteals
        row :dinner_meats
     end
    end

  end

  form do |f|
    f.inputs "Detalles de la Dieta" do
      f.semantic_fields_for :diet do |d|  
        d.input :fecal_incontinence
        d.input :hemacromotosis
        d.input :celiac
        d.input :irritable_colon
        d.input :pregnancy
        d.input :ovolact
        d.input :kosher
        d.input :without_fibers
        d.input :allowed_foods
      end
    end

    f.inputs "Desayuno" do
      f.semantic_fields_for :diet do |d|
        d.input :breakfast_fruits
        d.input :breakfast_lacteals
        d.input :breakfast_starch
      end
    end

    f.inputs "Colación" do
      f.semantic_fields_for :diet do |d|
        d.input :collation_fruits
        d.input :collation_lacteals
        d.input :collation_starch
      end
    end

    f.inputs "Almuerzo" do
      f.semantic_fields_for :diet do |d|
        d.input :lunch_starch
        d.input :lunch_vegetables
        d.input :luch_fats
        d.input :lunch_fruits
        d.input :lunch_lacteals
        d.input :lunch_meats
      end
    end

    f.inputs "Merienda" do
      f.semantic_fields_for :diet do |d|
        d.input :merienda_fruits
        d.input :merienda_lacteals
        d.input :merienda_starch
      end
    end

    f.inputs "Cena" do
      f.semantic_fields_for :diet do |d|
        d.input :dinner_starch
        d.input :dinner_vegetables
        d.input :dinner_fats
        d.input :dinner_fruits
        d.input :dinner_lacteals
        d.input :dinner_meats
      end
    end

    f.actions
  end

  filter :name
  filter :last_name
  filter :email
  filter :social_security, as: :select, collection: User::SOCIAL_SECURITY_TYPES
  filter :sex, as: :select, collection: User::SEX
  filter :cellphone

end