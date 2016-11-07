class TwitterService
  DEFAULT_LIMIT = 25

  def self.tweets(usr: '', limit: DEFAULT_LIMIT)
    options = {count: limit}
    TWITTER.user_timeline(usr, options)
  rescue
    []
  end
end