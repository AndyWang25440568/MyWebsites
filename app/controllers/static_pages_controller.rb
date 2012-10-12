class StaticPagesController < ApplicationController
  def home

    respond_to do |format|
        format.html
        format.js
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
