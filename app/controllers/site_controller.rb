class SiteController < ApplicationController
  before_action :is_authenticated, only: [:index]

  def index
  	 render :json => session
  end

  def privacy
  end

  def terms
  end
end
