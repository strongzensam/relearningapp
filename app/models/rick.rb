class Rick < ApplicationRecord
	has_many :mortys

	@ricks = Rick.all

	def eyeball_id
		"#{eyeballs} and ID #{id}"
		
	end
end
