class TwitterController < ApplicationController
  before_action :authenticate_user!

  def index

  end
  
  def show_tweets
    @username = params[:username] || 'harshs08'  
    @tweets = cache("twitter_results_#{@username}", expires_in: 5.minutes) do
      TwitterService.tweets(usr: @username)
    end
  end
end
