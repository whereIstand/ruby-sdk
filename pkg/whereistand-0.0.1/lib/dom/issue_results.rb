class WIS::DOM::IssueResults < WIS::DOM::Results
	attr_reader :issues
	
	def initialize(hits, issues)
		super(hits)
		@issues = issues
	end
end