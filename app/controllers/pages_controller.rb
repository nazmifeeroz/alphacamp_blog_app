class PagesController < ApplicationController

	def home
		c = Count.find(1)
		c.num += 1
		c.save

	end

	def about
		c = Count.find(2)
		c.num += 1
		c.save
	
	end

	def service
		c = Count.find(3)
		c.num += 1
		c.save
	end

end