class WIS::Client::Tools
	def self.get_json(url)
		resp = Net::HTTP.get_response(URI.parse(url))
		Yajl::Parser.parse(resp.body)
	end
	
	def self.uri_escape(string)
		URI.escape(string, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
	end
end