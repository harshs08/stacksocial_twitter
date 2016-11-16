class TwitterController < ApplicationController
  before_action :authenticate_user!

  def index
    @username ||= params[:username]
    @last_twit_id ||= params[:last_twit_id]
    paginate_set
  end

  private
  

  def paginate_set
    if @username.present?
      @tweets = TwitterService.tweets(usr: @username, max_id: @last_twit_id)
      @last_twit_id = @tweets.last.id
    else
      @tweets = TwitterService.tweets(usr: @username)
    end
  end


end
