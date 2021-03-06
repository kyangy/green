class PickupsController < ApplicationController

	def index
		@pickups = Pickup.where(completed: false)
	end

	def create
		@pickup = current_user.pickups.build(pickup_params)
		if @pickup.save
			redirect_to user_path(current_user)
		else
			render :new
		end
	end

	private 

	def pickup_params
		params.require(:pickup).permit(:date)
	end
end
