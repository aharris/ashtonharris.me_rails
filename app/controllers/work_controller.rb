class WorkController < ApplicationController
  def show
    render params[:page]
  end
end
