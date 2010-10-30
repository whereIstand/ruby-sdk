class WIS::DOM::Opinion
	attr_reader :account, :issue
	
	def initialize(account, issue)
		@account = account
		@issue = issue
	end
	
	def self.adapt_json(data)
		account = WIS::DOM::Account.new(data["Account"]["ID"], data["Account"]["Name"], data["Account"]["Description"])
		issue = WIS::DOM::Issue.new(data["Issue"]["ID"], data["Issue"]["Description"])
		WIS::DOM::Opinion.new(account, issue)
	end
end
