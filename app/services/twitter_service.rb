class TwitterService
  DEFAULT_LIMIT = 25

  def self.tweets(usr: '', limit: DEFAULT_LIMIT, max_id: nil)
    
    if max_id.empty?
      options = { count: limit }
    else
      options = {count: limit, max_id: max_id}
    end
    TWITTER.user_timeline(usr, options)
  rescue
    []
  end
end