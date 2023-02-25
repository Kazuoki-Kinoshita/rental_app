class PropertiesController < ApplicationController
  before_action :set_properties, only: [:show, :edit, :update, :destroy]

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
      if @property.stations.length == 2
        render :new
      elsif @property.stations.length == 1
        @property.stations.build
        render :new
      else
        2.times { @property.stations.build }
        render :new
      end
    end
  end

  def show
    @stations = @property.stations
  end

  def edit
    @property.stations.build
  end

  def update
    if @property.update(properties_params)
      redirect_to properties_path, notice: "物件編集を完了しました！"
    else
      @property.stations.build
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "物件を削除しました！"
  end


  private

  def properties_params
    params.require(:property).permit(:name, :rent, :address, :year, :remark, stations_attributes: [:id, :line, :station_name, :minutes])
  end

  def set_properties
    @property = Property.find(params[:id])
  end
end