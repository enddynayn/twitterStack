module TwitterClient
  cattr_accessor :adapter
  RESULT_TYPE = 'recent'.freeze
  LIMIT = 20


  def self.where(data, options = {})
    raise(TwitterAdapterNotDefinedError) if adapter.nil?
    limit = options.fetch(:limit, LIMIT)
    query = "to: #{data[:to]}"

    adapter.search(query, result_type: RESULT_TYPE)
      .take(limit).collect do |tweet|
        Tweet.new(
          text: tweet.text,
          created_at: tweet.created_at
        )
      end
  end
end
