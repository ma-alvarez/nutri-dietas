class History < ActiveRecord::Base
	belongs_to :user

	def body_mass_index
		self.weight / (self.user.height * self.user.height)
	end
end
