class WIS::DOM::Issue
	attr_reader :id;
	attr_accessor :description;
			
	def initialize(id, description)
		@id = id;
		@description = description;
	end
end