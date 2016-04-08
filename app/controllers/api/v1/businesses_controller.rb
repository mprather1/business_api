module Api
  module V1
    class BusinessesController < ApplicationController
      def index
        @businesses = Business.all
        respond_to do |format|
          format.json{render json: @businesses}
        end
      end

      def show
        @business = Business.find(params[:id])
        respond_to do |format|
          format.json{render json: @business}
        end
      end
      def new
        @business = Business.new
      end

      def create
        @business = Business.new(business_params)

        if @business.save
          redirect_to business_path(@business)
        else
          render 'new'
        end
      end

      def edit
        @business = Business.find(params[:id])
      end

      def update
        @business = Business.find(params[:id])

        if @business.update_attributes(business_params)
          redirect_to business_path(@business)
        else
          render 'edit'
        end
      end

      def delete
        @business = Business.find(params[:id])
      end

      def destroy
        @business = Business.find(params[:id])
        @business.destroy
        redirect_to businesss_path
      end

      def import
        Business.import(params[:file])
        redirect_to root_url
      end

      private

      def business_params
        params.require(:business).permit(:name)
      end
    end
  end
end
