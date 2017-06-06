class Tweet
  include Virtus.model

  attribute :created_at, Time
  attribute :text
end
