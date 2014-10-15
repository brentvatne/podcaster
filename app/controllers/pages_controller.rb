class PagesController < ApplicationController
  before_filter :require_authentication

  def home
    render text: 'logged in!'
  end

end
