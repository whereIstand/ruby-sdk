class WIS::DOM::AccountIssues < WIS::DOM::Results
	attr_reader :account, :issues
	
	def initialize(hits, account, issues)
		super(hits)
		@account = account
		@issues = issues
	end
	
	def self.adapt_json(data)
		account = WIS::DOM::Account.new(data["Account"]["ID"], data["Account"]["Name"], data["Account"]["Description"])
		issues = []
		
		data["Issues"].each do |i|
			issue_result = WIS::DOM::IssueResult.new
			issue_result.issue = WIS::DOM::Issue.new(i["Issue"]["ID"], i["Issue"]["Description"])
				
			unless i["Approved"].nil?
				opinion = WIS::DOM::AccountIssues.convert_hash_to_opinion(i["Approved"])
				issue_result.approved = WIS::DOM::ApprovedOpinion.new(opinion.account, opinion.issue)
				issue_result.approved.position = opinion.position
				issue_result.approved.narrative = opinion.narrative
				issue_result.approved.taken = opinion.taken
			end
			
			unless i["Unverified"].nil?
				opinion = WIS::DOM::AccountIssues.convert_hash_to_opinion(i["Unverified"])
				issue_result.unverified = WIS::DOM::UnverifiedOpinion.new(opinion.account, opinion.issue)
				issue_result.unverified.position = opinion.position
				issue_result.approved.narrative = opinion.narrative
			end
			
			unless i["Expressed"].nil?
				opinion = WIS::DOM::AccountIssues.convert_hash_to_opinion(i["Expressed"])
				issue_result.expressed = WIS::DOM::ExpressedOpinion.new(opinion.account, opinion.issue)
				issue_result.expressed.position = opinion.position
				issue_result.expressed.narrative = opinion.narrative
				issue_result.expressed.taken = opinion.taken
			end
			
			unless i["Unknown"].nil?
				opinion = WIS::DOM::AccountIssues.convert_hash_to_opinion(i["Unknown"])
				issue_result.unknown = WIS::DOM::UnknownOpinion.new(opinion.issue)
				issue_result.unknown.position = opinion.position
			end
			
			issues << issue_result
		end
		
		WIS::DOM::AccountIssues.new(data["Hits"], account, issues)
	end
	
	def self.convert_hash_to_opinion(hash)
		account = WIS::DOM::Account.new(hash["Account"]["ID"], hash["Account"]["Name"], hash["Account"]["Description"]) unless hash["Account"].nil?
		issue = WIS::DOM::Issue.new(hash["Issue"]["ID"], hash["Issue"]["Description"])
		opinion = WIS::DOM::Opinion.new(account, issue)
		opinion.narrative = hash["Narrative"] unless hash["Narrative"].nil?
		opinion.taken = hash["Taken"] unless hash["Taken"].nil?
		opinion.position = hash["Position"] unless hash["Position"].nil?
		opinion
	end
end