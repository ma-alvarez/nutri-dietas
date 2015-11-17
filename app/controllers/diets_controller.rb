class DietsController < ApplicationController
  before_action :set_diet, only: [:show]
  before_action :authenticate_user!
  
  def show
    @diets = ["celiac","irritable_colon","pregnancy","ovolact", "kosher"]
    @menus = ["without_fibers","menu","celiac_menu","infant_menu", "ovolact_menu", "gastrointestinal_menu"]
    @coplements = ["fecal_incontinence","hemacromotosis","allowed_foods","uric_acid_gout",
                   "gas_forming_foods", "anemia", "anticoagulantes", "sports_drink",
                   "soft_mechanics","cholesterol","breakfast_snacks","diarrhea","diverticulosis",
                   "gastritis","hypertension","glycemic_index","osteoporosis","hyperproteic_first_second",
                   "hyperproteic_third","hyperproteic_fourth","fruits_vegetables","hc_reduced_plan",
                   "cow_proteins","reflux","renal","monohydrate_creatine_sup","vomiting"]
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
    @chekDiets
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = current_user.diet
    end

    def checkDiets
      if (@diets_set.empty?)
        @diets_set.push("default")
      end
    end
end