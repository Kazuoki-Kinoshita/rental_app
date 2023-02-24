class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end
   
  def new
    @property = Property.new
  end

  def create
    @property = Property.new(properties_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end


  private

  def properties_params
    params.require(:property).permit(:name, :rent, :address, :year, :remark)
  end
end