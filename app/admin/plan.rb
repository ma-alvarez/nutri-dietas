ActiveAdmin.register Plan do
  controller do
    def permitted_params
      params.permit! # allow all parameters
    end
  end

  belongs_to :social_security
  
  index do
    selectable_column
    column :name
    column :active
    actions
  end


  form do |f|
    f.inputs "Detalles del Plan" do
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