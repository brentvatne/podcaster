class PagesController < ApplicationController
  before_filter :require_authentication

  def home
  end

end
