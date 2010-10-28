class WIS::DOM::IssueAccounts < WIS::DOM::Results
	attr_reader :accounts
	
	def initialize(hits, accounts)
		super(hits)
		@accounts = accounts
	end
end