class AdministratorsController < ApplicationController
	def administrator
		@administrators = Administrator.all
	end

	def show
	end

	def new
		@administrator = Administrator.new
	end

	def edit
	end

	def create
    @administrator = Administrator.new(user_params)

    respond_to do |format|
      if @administrator.save
        format.html { redirect_to @administrator, notice: 'Administrator was successfully created.' }
        format.json { render :show, status: :created, location: @administrator }
      else
        format.html { render :new }
        format.json { render json: @administrator.errors, status: :unprocessable_entity }
      end
    end
  end
end
