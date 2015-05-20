class DietsController < ApplicationController
  before_action :set_publication, only: [:show]
  before_action :authenticate_user!

  def show
  	@diets_set = [];
  	if (current_user.diet.fecal_incontinence ) 
  		@diets_set.push("fecal_incontinence");
  	end
  	if (current_user.diet.hemacromotosis)
  		@diets_set.push("hemacromotosis");
  	end
  	if (current_user.diet.celiac)
  		@diets_set.push("celiac");
  	end
  	if (current_user.diet.irritable_colon)
  		@diets_set.push("irritable_colon");
  	end
  	if (current_user.diet.pregnancy) 
  		@diets_set.push("pregnancy");
  	end
  	if (current_user.diet.ovolact) 
  		@diets_set.push("ovolact");
  	end
  	if (current_user.diet.kosher) 
  		@diets_set.push("kosher");
  	end
  	if (current_user.diet.without_fibers) 
  		@diets_set.push("without_fibers");
  	end
  	if (current_user.diet.allowed_foods) 
  		@diets_set.push("allowed_foods");
  	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @diet = current_user.diet
    end

end