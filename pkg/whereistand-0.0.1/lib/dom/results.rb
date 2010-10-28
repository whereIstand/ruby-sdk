class WIS::DOM::Results
	attr_reader :hits
	
	def initialize(hits)
		@hits = hits
	end
end