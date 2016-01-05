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
    actions
  end


  form do |f|
    f.inputs "Detalles del Plan" do
      f.input :name
      actions
    end
  end

  show do
    attributes_table do
      row :name
    end
  end


  filter :name

end