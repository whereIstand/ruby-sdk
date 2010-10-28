require 'lib/whereistand'

describe WIS::Client::Access do
	
	it "account search should not fail" do
		WIS::Client::Access.account_search("bill clinton")
	end
	
	it "account issues search should not fail" do
		account = WIS::DOM::Account.new(1, "BillClinton", "Bill Clinton")
		WIS::Client::Access.account_issues_search(account, "global warming")
	end
	
end