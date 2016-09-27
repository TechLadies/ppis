class CentersController < ApplicationController
def index
  @centers = Center.all
end
def show
  @center = Center.find(params[:id])
end
end
	def create
		@center = Center.find(params[:center_id])
		redirect_to center_path(@center)
	end

	private
	def center_params
		params.require(:center).permit(:moderator, :address)
	end
end
