class WIS::Client::Opinions
	
	def self.find_by_account_id_and_issue_id(account_id, issue_id)
		results = WIS::Client::Tools.get_json("http://api.whereistand.com/opinions?account=" + account_id.to_s + "&issue=" + issue_id.to_s)
		WIS::DOM::Opinion.adapt_json(results)
	end
	
	def self.search_known_account_by_issue(account, string)
		string = WIS::Client::Tools.uri_escape(string)
		results = WIS::Client::Tools.get_json("http://api.whereistand.com/opinions?account=" + account.id.to_s + "&issue=" + string)
		WIS::DOM::AccountIssues.adapt_json(results)
	end
	
end