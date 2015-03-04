class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    
    if @link.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def link_params
    params.require(:link).permit(:vanity_url, :destination_url)
  end
end
