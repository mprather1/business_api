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
    end
  end
end
