class TweetService
  def self.index(data)
    options = {
      limit: data.delete('limit'),
      term: data.delete('term'),
    }.compact

    TwitterClient.where(data, options)
  end
end
