ActiveAdmin.register SocialSecurity do
  controller do
    def permitted_params
      params.permit! # allow all parameters
    end
  end

  sidebar "Editar/Agregar Planes", only: [:show, :edit] do
    ul do
      li link_to "Planes", admin_social_security_plans_path(social_security)
    end
  end

  index do
    selectable_column
    column :name
    column :active
    actions
  end


  form do |f|
    f.inputs "Detalles de Obra Social" do
      f.input :name
      f.input :active
      actions
    end
  end

  show do
    attributes_table do
      row :name
      row :active
    end
  end


  filter :name

end