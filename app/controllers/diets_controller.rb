class DietsController < ApplicationController
  before_action :set_diet, only: [:show]
  before_action :authenticate_user!
  
  def show
    @diets = ["celiac","irritable_colon","pregnancy","ovolact", "kosher","weight_up","hepatic","osteoarthritis"]
    @menus = ["without_fibers","menu","celiac_menu","infant_menu", "ovolact_menu", "gastrointestinal_menu"]
    @coplements = ["fecal_incontinence","hemacromotosis","allowed_foods","uric_acid_gout",
                   "gas_forming_foods", "anemia", "anticoagulantes", "sports_drink",
                   "soft_mechanics","cholesterol","breakfast_snacks","diarrhea","diverticulosis",
                   "gastritis","hypertension","glycemic_index","osteoporosis","hyperproteic_first_second",
                   "hyperproteic_third","hyperproteic_fourth","fruits_vegetables","hc_reduced_plan",
                   "cow_proteins","reflux","renal","monohydrate_creatine_sup","vomiting","easter","christmas"]
    @translate = {"celiac"=>"Celiaco","irritable_colon"=>"Colon Irritable","pregnancy"=>"Embarazo","ovolact"=>"Ovolacto",
            "kosher"=>"Kosher","weight_up"=>"Subir de peso","hepatic"=>"Hepatica","osteoarthritis"=>"Artrosis",
            "without_fibers"=>"Menu sin fibras","menu"=>"Menu","celiac_menu"=>"Menu celiacos","easter"=>"Pascua","christmas"=>"Navidad",
            "infant_menu"=>"Menu infantil", "ovolact_menu"=>"Menu Ovolacto", "gastrointestinal_menu"=>"Menu gastrointestinal",
            "fecal_incontinence"=>"Inconsistencia fecal","hemacromotosis"=>"Hemacromotosis","allowed_foods"=>"Permitidos",
            "uric_acid_gout"=>"Acido urico y gota","gas_forming_foods"=>"Formadores de gas","anemia"=>"Anemia",
            "anticoagulantes"=>"Anticoagulantes", "sports_drink"=>"Bebida deportiva","soft_mechanics"=>"Blando mecanica",
            "cholesterol"=>"Colesterol","breakfast_snacks"=>"Desayuno & Snaks","diarrhea"=>"Diarrea","default"=>"Dieta",
            "diverticulosis"=>"Diverticulosis","gastritis"=>"Gastritis","hypertension"=>"Hipertension",
            "glycemic_index"=>"Indice glucemico","osteoporosis"=>"Osteoporosis","hyperproteic_first_second"=>"Hiper proteico 1-2",
            "hyperproteic_third"=>"Hiperproteico 3","hyperproteic_fourth"=>"Hiperproteico 4","fruits_vegetables"=>"Frutas y vegetales",
            "hc_reduced_plan"=>"Plan reducido en HC","cow_proteins"=>"Proteinas de Vaca","reflux"=>"Reflujo",
            "renal"=>"Renal","monohydrate_creatine_sup"=>"Suplementos (Monohidratos&Creatina)","vomiting"=>"Vomitos"}
    @diets_set = [];
    @menus_set = [];
    @complements_set = [];
    for i in @diets
      if (current_user.diet.send(i))
        @diets_set.push(i)
      end
    end
    for i in @menus
      if (current_user.diet.send(i))
        @menus_set.push(i)
      end
    end
    for i in @coplements
      if (current_user.diet.send(i))
        @complements_set.push(i)
      end
    end
    check_diets
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = current_user.diet
    end

    def check_diets
      if (@diets_set.empty?)
        @diets_set.push("default")
      end
    end
end