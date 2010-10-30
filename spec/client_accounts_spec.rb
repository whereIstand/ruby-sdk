require 'lib/whereistand'

describe WIS::Client::Accounts do
	
	it "search should return results" do
		results = WIS::Client::Accounts.search("clinton")
		results.kind_of?(WIS::DOM::AccountResults).should be_true
		results.hits.should > 0
	end
	
	it "find by id should work" do
		results = WIS::Client::Accounts.find_by_id(196)
		results.should_not be_nil
		results.kind_of?(WIS::DOM::Account).should be_true
		results.id.should == 196
	end
	
	it "find by id array should work" do
		results = WIS::Client::Accounts.find_by_id_array([196, 5874])
		results.should_not be_nil
		results.length.should == 2
		results.each do |account|
			account.kind_of?(WIS::DOM::Account).should be_true
		end
	end
	
	it "find by name should work" do
		results = WIS::Client::Accounts.find_by_name("brianr")
		results.should_not be_nil
		results.kind_of?(WIS::DOM::Account).should be_true
		results.id.should == 196
	end
	
	it "find by name array should work" do
		results = WIS::Client::Accounts.find_by_name_array(["brianr", "nick"])
		results.should_not be_nil
		results.length.should == 2
		results.each do |account|
			account.kind_of?(WIS::DOM::Account).should be_true
		end
	end
	
end