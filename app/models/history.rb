class History < ActiveRecord::Base
	belongs_to :user

	def body_mass_index
		index = self.weight / (self.user.height * self.user.height)
    	index.round(2)
	end

	def body_mass_label
		if self.complete?
				if self.body_mass_index < 18.5
					return "Bajo Peso"
				end
				if self.body_mass_index >= 18.5 && self.waist < 25
					return "Normal"
				end
				if self.body_mass_index >= 25 && self.waist < 30
					return "Sobrepeso"
				end
				if self.body_mass_index >= 30
					return "Obesidad"
				end
		end
	end

	def risk
		if self.complete?
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
	end

	def fats_value
		if self.fat && self.weight
			((self.fat * self.weight)/100).round(2)
		end
	end

	def complete?
		self.weight && self.waist && self.hip && self.leg
	end
	
end
