class FlatpagesController < ApplicationController
  # Public: Show flatpage
  #
  # Returns text/html
  def show
    @page = Flatpage.find_by_path(params[:path])
    raise ActiveRecord::RecordNotFound unless @page.present?
  end
end
