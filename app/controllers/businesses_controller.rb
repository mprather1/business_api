module Api
  module V1
    class BusinessesController < ApplicationController

      def index
        respond_to |format| do
          format.json{ @businesses = Business.all }
        end      
      end
end
