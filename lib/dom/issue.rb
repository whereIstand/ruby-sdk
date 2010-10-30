class WIS::DOM::Issue
	attr_reader :id
	attr_accessor :description
			
	def initialize(id, description)
		@id = id
		@description = description
	end
	
	def self.adapt_json(data)
		if data.kind_of?(Array)
			issues = []
			data.each do |i|
				issues << WIS::DOM::Issue.new(i["ID"], i["Description"])
			end
			issues
		else			
			WIS::DOM::Issue.new(data["ID"], data["Description"])
		end
	end
end