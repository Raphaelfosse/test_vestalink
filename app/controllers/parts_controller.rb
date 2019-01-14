class PartsController < ApplicationController

  def index
    if params[:site_id]
      @parts = Part.where(:site_id => params[:site_id])
    else
      @parts = Part.all
    end
  end

  def show
    @part = Part.find(params[:site_id])
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)

    @part.save

    redirect_to sites_path
  end

  private

  def part_params
    params.require(:part).permit(:reference_part, :reference_site, :part_type_designation, :site_id)
  end
end
