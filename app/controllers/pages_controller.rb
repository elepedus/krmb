class PagesController < ApplicationController

  def index
    render template: "pages/index"
  end

  def show
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def allowed_params
    params.require(:pages)
  end

  def valid_page?
    File.exists?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end