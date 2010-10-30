class WIS::Client::Access
	
	def self.account_search(string)
		string = URI.escape(string, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
		results = WIS::Client::Access.get_json("http://api.whereistand.com/accounts?search=" + string)
		WIS::DOM::AccountResults.adapt_json(results)
	end
	
	def self.account_issues_search(account, string)
		string = URI.escape(string, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
		results = WIS::Client::Access.get_json("http://api.whereistand.com/opinions?account=" + account.id.to_s + "&issue=" + string)
		WIS::DOM::AccountIssues.adapt_json(results)
	end
	
	def self.get_json(url)
		resp = Net::HTTP.get_response(URI.parse(url))
		Yajl::Parser.parse(resp.body)
	end
end