ActiveAdmin.register User do
  controller do
    def permitted_params
      params.permit! # allow all parameters
    end
  end

  sidebar "Editar/Agregar Medidas", only: [:show, :edit] do
    ul do
      li link_to "Medidas", admin_user_histories_path(user)
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :last_name
    column :email
    column :social_security
    actions
  end

  show do
    attributes_table do
      row :email
      row :name
      row :last_name
      row :address 
      row :city
      row :country, as: :string
      row :phone
      row :cellphone 
      row :social_security
      row :social_security_plan
      row :social_security_number
      row :marital_status, as: :select
      row :birhtday
      row :profesion
      row :sex
      row :job_hs
      row :job_type
      row :weight_max
      row :weight_min
      row :weight_avg
      row :weight_now
      row :weight_exp
      row :objective
      row :family
      row :cooks
      row :buys
      row :allergies
      row :kosher
      row :vegetarian
      row :ovolacto
      row :lacto
      row :pork
      row :meat
      row :chicken
      row :fish
      row :celiac
      row :swallowing
      row :mastication
      row :nausea
      row :diarrhea
      row :vomits
      row :constipation
      row :anemia
      row :hypertension
      row :diabetes
      row :heart_problems
      row :overweight
      row :cholesterol
      row :bulimia
      row :anorexia
      row :intestinal_diseases
      row :cancer
      row :cancer_type
      row :illness_other
      row :smoker
      row :smoker_amount
      row :medication
      row :wrist_size
      row :height
      row :vitamins
      row :sport1
      row :sport1
      row :sport2
      row :sport2
      row :sport3
      row :sport3
      row :menstruation
      row :how_meet
      row :comments
    end

    panel "Dietas" do
      attributes_table_for user.diet do
        row :celiac
        row :irritable_colon
        row :pregnancy
        row :ovolact
        row :kosher
        row :weight_up
        row :hepatic
        row :osteoarthritis
      end
    end

    panel "Complementos a la Dieta" do
      attributes_table_for user.diet do
        row :fecal_incontinence
        row :hemacromotosis
        row :allowed_foods
        row :uric_acid_gout
        row :gas_forming_foods
        row :anemia
        row :anticoagulantes
        row :sports_drink
        row :soft_mechanics
        row :cholesterol
        row :breakfast_snacks
        row :diarrhea
        row :diverticulosis
        row :gastritis
        row :hypertension
        row :glycemic_index
        row :osteoporosis
        row :hyperproteic_first_second
        row :hyperproteic_third
        row :hyperproteic_fourth
        row :fruits_vegetables
        row :hc_reduced_plan
        row :cow_proteins
        row :reflux
        row :renal
        row :monohydrate_creatine_sup
        row :vomiting
        row :easter
        row :christmas
      end
    end

    panel "Menus" do
      attributes_table_for user.diet do
        row :without_fibers
        row :menu
        row :celiac_menu
        row :infant_menu
        row :ovolact_menu
        row :gastrointestinal_menu
      end
    end

    panel "Desayuno" do
      attributes_table_for user.diet do
        row :breakfast_fruits
        row :breakfast_lacteals
        row :breakfast_starch
     end
    end

    panel "Colación" do
      attributes_table_for user.diet do
        row :collation_fruits
        row :collation_lacteals
        row :collation_starch
     end
    end

    panel "Almuerzo" do
      attributes_table_for user.diet do
        row :lunch_starch
        row :lunch_vegetables
        row :luch_fats
        row :lunch_fruits
        row :lunch_lacteals
        row :lunch_meats
     end
    end

    panel "Merienda" do
      attributes_table_for user.diet do
        row :merienda_fruits
        row :merienda_lacteals
        row :merienda_starch
     end
    end

    panel "Cena" do
      attributes_table_for user.diet do
        row :dinner_starch
        row :dinner_vegetables
        row :dinner_fats
        row :dinner_fruits
        row :dinner_lacteals
        row :dinner_meats
     end
    end

    panel "Medidas" do
      paginated_collection(user.histories.page(params[:page]).per(4), download_links: false) do
        table_for(collection, sortable: false) do
          column "Fecha", :date
          column "Peso (kg)", :weight
          column "Cintura (cm)", :waist
          column "Cadera (cm)", :hip
          column "Pierna (cm)", :leg
          column "Grasa (%)", :fat
          column "Índice de masa corporal", :body_mass_index
        end
      end
    end

  end

  filter :name
  filter :last_name
  filter :email
  filter :social_security, as: :select, collection: User::SOCIAL_SECURITY_TYPES
  filter :sex, as: :select, collection: User::SEX
  filter :cellphone

  form do |f|
    f.inputs "Detalles de Usuario" do
      f.input :email
      f.input :name
      f.input :last_name
      f.input :address 
      f.input :city
      f.input :country, as: :string
      f.input :phone
      f.input :cellphone 
      f.input :social_security, as: :select, collection: User::SOCIAL_SECURITY_TYPES
      f.input :social_security_plan, as: :select, collection: User::SOCIAL_SECURITY_PLAN_TYPES
      f.input :social_security_number
      f.input :marital_status, as: :select, collection: User::MARITAL_STATUS
      f.input :birhtday, start_year: 1910, end_year: 2050
      f.input :profesion
      f.input :sex, as: :select, collection: User::SEX
      f.input :job_hs, as: :select, collection: User::JOB_HS
      f.input :job_type, as: :select, collection: User::JOB_TYPE
      f.input :weight_max
      f.input :weight_min
      f.input :weight_avg
      f.input :weight_now
      f.input :weight_exp
      f.input :objective
      f.input :family
      f.input :cooks, as: :select, collection: User::COOKS
      f.input :buys, as: :select, collection: User::BUYS
      f.input :allergies
      f.input :kosher
      f.input :vegetarian
      f.input :ovolacto
      f.input :lacto
      f.input :pork
      f.input :meat
      f.input :chicken
      f.input :fish
      f.input :celiac
      f.input :swallowing
      f.input :mastication
      f.input :nausea
      f.input :diarrhea
      f.input :vomits
      f.input :constipation
      f.input :anemia
      f.input :hypertension
      f.input :diabetes
      f.input :heart_problems
      f.input :overweight
      f.input :cholesterol
      f.input :bulimia
      f.input :anorexia
      f.input :intestinal_diseases
      f.input :cancer
      f.input :cancer_type
      f.input :illness_other
      f.input :smoker
      f.input :smoker_amount
      f.input :medication
      f.input :wrist_size
      f.input :height
      f.input :vitamins
      f.input :sport1
      f.input :sport1_frecuency, as: :select, collection: User::SPORT
      f.input :sport2
      f.input :sport2_frecuency, as: :select, collection: User::SPORT
      f.input :sport3
      f.input :sport3_frecuency, as: :select, collection: User::SPORT
      f.input :menstruation
      f.input :how_meet
      f.input :comments
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end

    f.inputs "", for: [:diet, f.object.diet || f.object.build_diet] do |d|
      f.inputs "Dietas" do
        d.input :celiac
        d.input :irritable_colon
        d.input :pregnancy
        d.input :ovolact
        d.input :kosher
        d.input :hepatic
        d.input :osteoarthritis
      end
       f.inputs "Complementos a la Dieta" do
        d.input :fecal_incontinence
        d.input :hemacromotosis
        d.input :allowed_foods
        d.input :uric_acid_gout
        d.input :gas_forming_foods
        d.input :anemia
        d.input :anticoagulantes
        d.input :sports_drink
        d.input :soft_mechanics
        d.input :cholesterol
        d.input :breakfast_snacks
        d.input :diarrhea
        d.input :diverticulosis
        d.input :gastritis
        d.input :hypertension
        d.input :glycemic_index
        d.input :osteoporosis
        d.input :hyperproteic_first_second
        d.input :hyperproteic_third
        d.input :hyperproteic_fourth
        d.input :fruits_vegetables
        d.input :hc_reduced_plan
        d.input :cow_proteins
        d.input :reflux
        d.input :renal
        d.input :monohydrate_creatine_sup
        d.input :vomiting
        d.input :easter
        d.input :christmas
      end
      f.inputs "Menus" do
        d.input :without_fibers
        d.input :menu
        d.input :celiac_menu
        d.input :infant_menu
        d.input :ovolact_menu
        d.input :gastrointestinal_menu
      end
      f.inputs "Desayuno" do
      d.input :breakfast_fruits
      d.input :breakfast_lacteals
      d.input :breakfast_starch
      end
      f.inputs "Colación" do
      d.input :collation_fruits
      d.input :collation_lacteals
      d.input :collation_starch
      end
      f.inputs "Almuerzo" do
      d.input :lunch_starch
      d.input :lunch_vegetables
      d.input :luch_fats
      d.input :lunch_fruits
      d.input :lunch_lacteals
      d.input :lunch_meats
      end
      f.inputs "Merienda" do
      d.input :merienda_fruits
      d.input :merienda_lacteals
      d.input :merienda_starch
      end
      f.inputs "Cena" do
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

end