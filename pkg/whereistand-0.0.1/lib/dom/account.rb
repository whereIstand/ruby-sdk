class WIS::DOM::Account
	attr_reader :id, :name;
	attr_accessor :description;
			
	def initialize(id, name, description)
		@id = id;
		@name = name;
		@description = description;
	end
end