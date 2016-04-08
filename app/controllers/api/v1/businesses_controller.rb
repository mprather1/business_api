module Api
  module V1
    class BusinessesController < ApplicationController
      def index
        @businesses = Business.all
        respond_to do |format|
          format.json{render json: @businesses}
        end
      end
    end
  end
end
