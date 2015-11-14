class History < ActiveRecord::Base
	belongs_to :user

	def body_mass_index
		index = self.weight / (self.user.height * self.user.height * 100)
    	index.round(2)
	end

end
