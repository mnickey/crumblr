class HeartsController < ApplicationController
	def create
		@heart = Heart.new(heart_params)

		if @heart.save
			redirect_to @heart.post, notice: 'Hearted the shit out of that post.'
		else
			redirect_to root_url, notice: 'Had an issue hearting that sucker.'
		end
	end

	private
	def heart_params
		params.require(:heart).permit(:post_id)
	end
end