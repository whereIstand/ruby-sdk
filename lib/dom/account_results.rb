class WIS::DOM::AccountResults < WIS::DOM::Results
	attr_reader :accounts
	
	def initialize(hits, accounts)
		super(hits)
		@accounts = accounts
	end
	
	def self.adapt_json(data)
		accounts = []
		data["Accounts"].each do |a|
			accounts << WIS::DOM::Account.new(a["ID"], a["Name"], a["Description"])
		end
		
		WIS::DOM::AccountResults.new(data["Hits"], accounts)
	end
end