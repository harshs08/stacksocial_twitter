class PagesController < ApplicationController
  def index
    if user_signed_in?
      redirect_to twitter_index_path
    end
  end
end