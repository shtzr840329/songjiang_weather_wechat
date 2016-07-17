class RadarSatellisController < ApplicationController

  def locate
    
  end

  def show
    @radar_images = Radar.locate location_params
    @cloud_img = Image::CloudData.new.fetch
  end

  private
  def location_params
    params.permit(:lon, :lat)
  end
end
