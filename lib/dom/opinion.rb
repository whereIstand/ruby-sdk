class WIS::DOM::Opinion
	attr_reader :account, :issue
	attr_accessor :taken, :position, :narrative
	
	def initialize(account, issue)
		@account = account
		@issue = issue
	end
	
	def self.adapt_json(data)
		account = WIS::DOM::Account.new(data["Account"]["ID"], data["Account"]["Name"], data["Account"]["Description"])
		issue = WIS::DOM::Issue.new(data["Issue"]["ID"], data["Issue"]["Description"])
		opinion = WIS::DOM::Opinion.new(account, issue)
		opinion.narrative = data["Narrative"] unless data["Narrative"].nil?
		opinion.taken = data["Taken"] unless data["Taken"].nil?
		opinion.position = data["Position"] unless data["Position"].nil?
		opinion
	end
end
