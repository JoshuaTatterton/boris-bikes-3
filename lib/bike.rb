class Bike


	def initialize
		@broken = false
	end

	  def working?
	    not @broken
	  end

	  def fix
	  	@broken = false
	  end

	  def report_broken
	  	@broken = true
	  end

	  def broken?
	  	@broken
	  end
end
