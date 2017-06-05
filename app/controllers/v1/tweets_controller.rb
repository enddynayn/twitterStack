module V1
  class TweetsController < ApplicationController
    before_action :authenticate_user

    def index
      tweets = TweetService.index(tweet_collection_params)

      render json: tweets, status: :ok
    end

    private

    def tweet_collection_params
      params.permit(:to, :limit, :term).to_h
    end
  end
end
