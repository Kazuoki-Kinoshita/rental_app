class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end
   
  def new
    @property = Property.new
  end

  def create
    @property = Property.create(properties_params)
    redirect_to properties_path
  end  


  private

  def properties_params
    params.require(:property).permit(:name, :rent, :address, :year, :remark)
  end
end
