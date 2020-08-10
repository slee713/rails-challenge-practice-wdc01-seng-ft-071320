class CompaniesController < ApplicationController

    def index
        @companies = Company.all 
    end

    def show 
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        byebug
    end

end


#Company.create(
#     name: params[:company][:name],
#     office_ids: params[:company][:offices][:id],
#     office_floors: params[:company][:offices][:offices]
# )