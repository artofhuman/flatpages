class FlatpagesController < ApplicationController
  # Public: Show flatpage
  #
  # Returns text/html
  def show
    @page = Page.friendly.find(params[:id])
  end
end
