class DevicesController < ApplicationController

  def new
    @business = Device.new
  end

  def create
    @business = Device.new(business_params)

    if @business.save
      redirect_to business_path(@business)
    else
      render 'new'
    end
  end

  def edit
    @business = Device.find(params[:id])
  end

  def update
    @business = Device.find(params[:id])

    if @business.update_attributes(business_params)
      redirect_to business_path(@business)
    else
      render 'edit'
    end
  end

  def delete
    @business = Device.find(params[:id])
  end

  def destroy
    @business = Device.find(params[:id])
    @business.destroy
    redirect_to businesss_path
  end

  private

  def business_params
    params.require(:business).permit(:name)
  end
end
