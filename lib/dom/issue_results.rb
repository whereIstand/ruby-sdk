class WIS::DOM::IssueResults < WIS::DOM::Results
	attr_reader :issues
	
	def initialize(hits, issues)
		super(hits)
		@issues = issues
	end
	
	def self.adapt_json(data)
		issues = []
		data["Issues"].each do |i|
			issues << WIS::DOM::Issue.new(i["ID"], i["Description"])
		end
		
		WIS::DOM::IssueResults.new(data["Hits"], issues)
	end
end