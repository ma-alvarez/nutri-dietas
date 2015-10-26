ActiveAdmin.register User, as: "Medidas" do
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
    panel "Medidas" do
      paginated_collection(medidas.histories.page(params[:page]).per(4), download_links: false) do
        table_for(collection, sortable: false) do
          column "Fecha", :date
          column "Peso (kg)", :weight
          column "Muñeca (cm)", :waist
          column "Cintura (cm)", :hip
          column "Pierna (cm)", :leg
          column "Grasa", :fat
          column "Índice de masa muscular", :body_mass_index
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

end