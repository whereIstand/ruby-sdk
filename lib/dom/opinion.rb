class WIS::DOM::Opinion
	attr_reader :account, :issue
	
	def initialize(account, issue)
		@account = account
		@issue = issue
	end
end
