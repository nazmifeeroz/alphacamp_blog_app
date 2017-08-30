class PagesController < ApplicationController

	def home
		
		c = Count.find_by(page: "Home")
		
		if c
			c.num += 1
			c.save
		else
			Count.create(page: "Home", num: 0)

		end

		if Count.find_by(page: "About") == nil
		 Count.create(page: "About", num: 0)
		end

		if Count.find_by(page: "service") == nil
			Count.create(page: "service", num: 0) 
		end
			

	end

	def about
		c = Count.find_by(page: "About")
		c.num += 1
		c.save
	
	end

	def service
		c = Count.find_by(page: "service")
		c.num += 1
		c.save
	end

	def destroy
		Count.destroy_all
		redirect_to root_path
	end

end