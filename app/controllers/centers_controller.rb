class CentersController < ApplicationController
	def index
		@centers = Center.all
	end

	def show
	end

	def new
		@center = Center.new
	end

	def edit
	end

	def create
    @center = Center.new(center_params)

    respond_to do |format|
      if @center.save
        format.html { redirect_to @center, notice: 'New center was successfully added.' }
        format.json { render :show, status: :created, location: @center }
      else
        format.html { render :new }
        format.json { render json: @center.errors, status: :unprocessable_entity }
      end
    end
  end

end
