class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @categories = ["japanese", "thai", "jamaican"]
  end
end
