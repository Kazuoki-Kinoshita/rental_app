class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end
   
  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  def create
    @property = Property.new(properties_params)
    if @property.save
      redirect_to properties_path, notice: "物件登録を完了しました！"
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
    @stations = @property.stations
  end

  def edit
    @property = Property.find(params[:id])
    if @property.stations.present?
      @property.stations.build
    else
      2.times { @property.stations.build }
    end
  end

  def update
    @property = Property.find(params[:id])    
    if @property.update(properties_params)
      redirect_to properties_path, notice: "物件編集を完了しました！"
    else
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])    
    @property.destroy
    redirect_to properties_path, notice: "物件を削除しました！"
  end


  private

  def properties_params
    params.require(:property).permit(:name, :rent, :address, :year, :remark, stations_attributes: [:id, :line, :station_name, :minutes])
  end
end