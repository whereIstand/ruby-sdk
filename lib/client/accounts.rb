class WIS::Client::Accounts
	
	def self.search(string)
		string = WIS::Client::Tools.uri_escape(string)
		results = WIS::Client::Tools.get_json("http://api.whereistand.com/accounts?search=" + string)
		WIS::DOM::AccountResults.adapt_json(results)
	end
	
	def self.find_by_id(id)
		WIS::DOM::Account.adapt_json(WIS::Client::Tools.get_json("http://api.whereistand.com/accounts/" + id.to_s))
	end
	
	def self.find_by_id_array(ids)
		result = WIS::Client::Tools.get_json("http://api.whereistand.com/accounts?ids=" + ids.join(","))
		WIS::DOM::Account.adapt_json(result)
	end
	
	def self.find_by_name(name)
		WIS::DOM::Account.adapt_json(WIS::Client::Tools.get_json("http://api.whereistand.com/accounts/" + name))
	end
	
	def self.find_by_name_array(names)
		result = WIS::Client::Tools.get_json("http://api.whereistand.com/accounts?names=" + names.join(","))
		WIS::DOM::Account.adapt_json(result)
	end
end