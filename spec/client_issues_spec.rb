require 'lib/whereistand'

describe WIS::Client::Issues do

	it "search should return results" do
		results = WIS::Client::Issues.search("global warming")
		results.kind_of?(WIS::DOM::IssueResults).should be_true
		results.hits.should > 0
	end
	
	it "find by id should work" do
		results = WIS::Client::Issues.find_by_id(16400)
		results.should_not be_nil
		results.kind_of?(WIS::DOM::Issue).should be_true
		results.id.should == 16400
	end
	
	it "find by id array should work" do
		results = WIS::Client::Issues.find_by_id_array([16400, 4662])
		results.should_not be_nil
		results.length.should == 2
		results.each do |issue|
			issue.kind_of?(WIS::DOM::Issue).should be_true
		end
	end
	
end