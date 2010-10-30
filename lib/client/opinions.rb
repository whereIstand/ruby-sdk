class WIS::Client::Opinions
	def self.search_known_account_by_issue(account, string)
		string = WIS::Client::Tools.uri_escape(string)
		results = WIS::Client::Tools.get_json("http://api.whereistand.com/opinions?account=" + account.id.to_s + "&issue=" + string)
		WIS::DOM::AccountIssues.adapt_json(results)
	end
end