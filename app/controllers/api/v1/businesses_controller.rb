module Api
  module V1
    class BusinessesController < ApplicationController

      skip_before_filter :verify_authenticity

      def index
        @businesses = Business.sorted
        respond_to do |format|
          format.json{ paginate json: @businesses.pluck(:name).to_a, per_page: 50 }
        end
      end

      def show
        @business = Business.find(params[:id])
        respond_to do |format|
          format.json{ render json: @business, serializer: ShowSerializer }
        end
      end

    end
  end
end
