require 'lib/whereistand'

describe WIS::Client::Opinions do
	
	it "opinion known account issue search should not fail" do
		account = WIS::DOM::Account.new(196, "brianr", "BrianR")
		WIS::Client::Access.account_issues_search(account, "global warming")
	end
	
	it "opinion known account issue search should return results" do
		account = WIS::DOM::Account.new(196, "brianr", "BrianR")
		results = WIS::Client::Access.account_issues_search(account, "global warming")
		results.hits.should > 0
	end
	
end