ActiveAdmin.register User do
  controller do
    def permitted_params
      params.permit! # allow all parameters
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

    f.inputs "Detalles de la Dieta", for: [:diet, f.object.diet || f.object.build_diet] do |d|
      d.input :fecal_incontinence
      d.input :hemacromotosis
      d.input :celiac
      d.input :irritable_colon
      d.input :pregnancy
      d.input :ovolact
      d.input :kosher
      d.input :without_fibers
      d.input :allowed_foods
      d.input :breakfast_fruits
      d.input :breakfast_lacteals
      d.input :breakfast_starch
      d.input :collation_fruits
      d.input :collation_lacteals
      d.input :collation_starch
      d.input :lunch_starch
      d.input :lunch_vegetables
      d.input :luch_fats
      d.input :lunch_fruits
      d.input :lunch_lacteals
      d.input :lunch_meats
      d.input :merienda_fruits
      d.input :merienda_lacteals
      d.input :merienda_starch
      d.input :dinner_starch
      d.input :dinner_vegetables
      d.input :dinner_fats
      d.input :dinner_fruits
      d.input :dinner_lacteals
      d.input :dinner_meats
    end

    f.actions
  end

end