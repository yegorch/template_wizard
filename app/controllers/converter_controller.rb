class ConverterController < ApplicationController
  require 'html2haml'

  def new
  end

  def create
    if params[:file].present?
      erb_content = params[:file].read
      haml_content = Haml::HTML.new(erb_content).render

      send_data haml_content, filename: 'converted.haml'
    else
      flash[:alert] = "Please upload a file."
      render :new
    end
  end
end