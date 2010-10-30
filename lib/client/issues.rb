class WIS::Client::Issues
	def self.search(string)
		string = WIS::Client::Tools.uri_escape(string)
		results = WIS::Client::Tools.get_json("http://api.whereistand.com/issues?search=" + string)
		WIS::DOM::IssueResults.adapt_json(results)
	end
	
	def self.find_by_id(id)
		WIS::DOM::Issue.adapt_json(WIS::Client::Tools.get_json("http://api.whereistand.com/issues/" + id.to_s))
	end
	
	def self.find_by_id_array(ids)
		result = WIS::Client::Tools.get_json("http://api.whereistand.com/issues?ids=" + ids.join(","))
		WIS::DOM::Issue.adapt_json(result)
	end
end