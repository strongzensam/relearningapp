class Rick < ApplicationRecord
	@ricks = Rick.all

	def eyeball_id
		"#{eyeballs} and ID #{id}"
		
	end
end
