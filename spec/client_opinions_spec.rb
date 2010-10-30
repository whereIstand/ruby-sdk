require 'lib/whereistand'

describe WIS::Client::Opinions do
	
	it "find opinion by account id and issue id should work" do
		opinion = WIS::Client::Opinions.find_by_account_id_and_issue_id(196, 16400)
		opinion.should_not be_nil
		opinion.kind_of?(WIS::DOM::Opinion).should be_true
	end
	
	it "known account search by issue should return results" do
		account = WIS::DOM::Account.new(196, "brianr", "BrianR")
		results = WIS::Client::Opinions.search_known_account_by_issue(account, "global warming")
		results.kind_of?(WIS::DOM::AccountIssues).should be_true
		results.hits.should > 0
		
		results.issues.each do |issue_result|
			issue_result.kind_of?(WIS::DOM::IssueResult).should be_true
		end
	end
	
end