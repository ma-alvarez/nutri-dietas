ActiveAdmin.register History do
  controller do
    def permitted_params
      params.permit! # allow all parameters
    end
  end

  config.per_page = 4
  config.sort_order = 'date_desc'
  belongs_to :user

  index do
    selectable_column
    column :date
    column :weight
    column :waist
    column :hip
    column :leg
    column :fat
    column :body_mass_index
    actions
  end


  form do |f|
    f.inputs "Medidas" do
      f.input :date
      f.input :weight
      f.input :waist
      f.input :hip
      f.input :leg
      f.input :fat
    end
    actions
  end

  show do
    attributes_table_for history  do
      row :date
      row ("Peso (kg)") {|h| h.weight}
      row ("Cintura (cm)") {|h| h.waist}
      row ("Cadera (cm)") {|h| h.hip}
      row ("Pierna (cm)") {|h| h.leg}
      row ("Grasa (%)") {|h| h.fat}
      row ("Índice de masa corporal") {|h| h.body_mass_index}
    end
  end

  sidebar "Peso mínimo (kg) / Fecha de peso mínimo", only: [:index] do
    li user.min_weight
    li user.min_weight_date
  end

  sidebar "Peso máximo (kg)/ Fecha de peso máximo", only: [:index] do
    li user.max_weight
    li user.max_weight_date
  end


  filter :date
  filter :weight
  filter :waist
  filter :hip
  filter :leg
  filter :fat

end