class BuildingsController < ApplicationController
    def index
        @buildings = Building.all 
    end

    def show
        @building = Building.find(params[:id])
    end

    def edit
        @building = Building.find(params[:id])
    end

    def update
        @building = Building.find(params[:id])
        @building.update(params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors))
        if @building.valid?
            @building.save
            redirect_to building_path(@building)
        else 
            render :edit
        end
    end
end