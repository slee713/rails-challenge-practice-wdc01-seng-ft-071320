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
        #need to solve
    end

end