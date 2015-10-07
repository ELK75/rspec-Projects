class Zombie
	attr_accessor :name, :brains

	def initialize
		@name = 'Ash'
		@brains = 0
		@be_hungry = true
	end

	def hungry?
		true
	end
end