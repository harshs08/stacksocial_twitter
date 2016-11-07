class TwitterController < ApplicationController
  before_action :authenticate_user!

  def index
    @username ||= params[:username]
    show_tweets if @username.present?
  end

  private
  
  def show_tweets
    @tweets = Rails.cache.fetch("#{@username}/show_tweets", expires_in: 5.minutes) do
      TwitterService.tweets(usr: @username)
    end
  end
end
