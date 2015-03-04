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

  def redirect
    link = Link.find_by_vanity_url(params[:short_url]) || not_found

    link.visitors.create(ip: request.remote_ip, user_agent: request.user_agent)
    redirect_to "http://#{link.destination_url}"
  end

  def stats
    @link = Link.find_by_vanity_url(params[:short_url])
  end

  private

  def link_params
    params.require(:link).permit(:vanity_url, :destination_url)
  end
end
