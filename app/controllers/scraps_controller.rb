class ScrapsController < ApplicationController

  def index
    @scraps = Scrap.all

    if params[:example] == 'remotipart'
      render :remotipart_index
      return
    end
  end

  def create
    @scrap = Scrap.new(scrap_params)

    if scrap_params[:image].present?
      @scrap.image = scrap_params[:image]
    elsif scrap_params[:text_file].present?
      @scrap.text_file = scrap_params[:text_file]
    end

    @scrap.save

    respond_to do |format|
      format.html do
        redirect_to scraps_path
      end

      format.js do
        if remotipart_submitted?
          render :create
        else
          render json: {
            image: @scrap.read_attribute(:image),
            fillThumb: @scrap.image.url(:fill_thumb),
            fitThumb: @scrap.image.url(:fit_thumb),
          }
        end
      end
    end
  end

  private


  def scrap_params
    params.require(:scrap).permit(:image, :text_file)
  end
end
