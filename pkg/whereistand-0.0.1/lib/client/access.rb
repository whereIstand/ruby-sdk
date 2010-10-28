class WIS::Client::Access
	
	def self.account_search(string)
		# invoke call to http://api.whereistand.com/account/search?q=blah 
		value = "{\"Accounts\":[{\"ID\":380,\"Name\":\"BillClinton\",\"Description\":\"Bill Clinton\"},{\"ID\":120,\"Name\":\"HillaryClinton\",\"Description\":\"Hillary Rodham Clinton\"},{\"ID\":3340,\"Name\":\"ChelseaClinton\",\"Description\":\"Chelsea Clinton\"}],\"Hits\":3}"
		WIS::DOM::AccountResults.adapt_json(Yajl::Parser.parse(value))
	end
	
	def self.account_issues_search(account, string)
		value = "{\"Account\":{\"ID\":1,\"Name\":\"BillClinton\",\"Description\":\"William Jefferson Clinton\"},\"Issues\":[{\"Issue\":{\"ID\":1,\"Description\":\"Is global warming cool?\"},\"Unknown\":null,\"Unverified\":null,\"Approved\":{\"Account\":{\"ID\":1,\"Name\":\"BillClinton\",\"Description\":\"William Jefferson Clinton\"},\"Issue\":{\"ID\":1,\"Description\":\"Is global warming cool?\"}}},{\"Issue\":{\"ID\":2,\"Description\":\"Is global warming awesome?\"},\"Unknown\":{\"Account\":null,\"Issue\":{\"ID\":2,\"Description\":\"Is global warming awesome?\"}},\"Unverified\":null,\"Approved\":null},{\"Issue\":{\"ID\":3,\"Description\":\"Is global warming raspy?\"},\"Unknown\":{\"Account\":null,\"Issue\":{\"ID\":3,\"Description\":\"Is global warming raspy?\"}},\"Unverified\":null,\"Approved\":null}],\"Hits\":3}"
		WIS::DOM::AccountIssues.adapt_json(Yajl::Parser.parse(value))
	end
end