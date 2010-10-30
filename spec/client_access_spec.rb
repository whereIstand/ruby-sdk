require 'lib/whereistand'

describe WIS::Client::Access do
	
	it "account search should not fail" do
		WIS::Client::Access.account_search("clinton")
	end
	
	it "account search should return results" do
		results = WIS::Client::Access.account_search("clinton")
		results.hits.should > 0
	end
	
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