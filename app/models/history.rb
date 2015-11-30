class History < ActiveRecord::Base
	belongs_to :user

	def body_mass_index
		index = self.weight / (self.user.height * self.user.height)
    	index.round(2)
	end

	def risk
		if self.user.sex == 'M'
			if self.waist < 94
				return "Bajo"
			end
			if self.waist >= 94 && self.waist < 102
				return "Medio"
			end
			if self.waist >= 102
			 	return "Alto"
			end 	
		else
			if self.waist < 80
				return "Bajo"
			end
			if self.waist >= 80 && self.waist < 88
				return "Medio"
			end
			if self.waist >= 88
				return "Alto"
			end
		end
	end

	def fats_value
		((self.fat * self.weight)/100).round(2)
	end
	
end
