class WIS::DOM::Account
	attr_reader :id, :name
	attr_accessor :description
			
	def initialize(id, name, description)
		@id = id
		@name = name
		@description = description
	end
	
	def self.adapt_json(data)
		if data.kind_of?(Array)
			accounts = []
			data.each do |a|
				accounts << WIS::DOM::Account.new(a["ID"], a["Name"], a["Description"])
			end
			accounts
		else			
			WIS::DOM::Account.new(data["ID"], data["Name"], data["Description"])
		end
	end
end