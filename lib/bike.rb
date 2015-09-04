class Bike
	attr_reader :working

	def initialize
		@working = true
	end

	def working?
		@working
	end

	def report_broken 
		@working = false
		return nil
	end

	def broken?
		!(@working)
	end
end